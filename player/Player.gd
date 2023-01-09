extends KinematicBody2D

var Powerup = preload('res://powerups/Powerup.gd')
var BasketScene = preload('res://basket/Basket.tscn')
var Vegetable = preload('res://vegetable/Vegetable.gd')

# The first basket in the array is closeset to the player.
var baskets: Array = []
var held_vegetable = null

export var speed = 500#150 # TODO: change back

export var boot_bonus_speed = 50

onready var sprite: AnimatedSprite = $AnimatedSprite
onready var vegetable_sprite: AnimatedSprite = $VegetableSprite
onready var animation:= $BlinkAnimation

# Invincibility stuff
var invincible = false setget set_invincible
onready var timer = $InvinciblityTimer
onready var area: Area2D = $Area2D
signal invincibility_started
signal invincibility_ended

func _physics_process(delta: float) -> void:
    var velocity = Vector2.ZERO
    if Input.is_action_pressed('move_down'):
        velocity.y = 1
    if Input.is_action_pressed('move_left'):
        velocity.x = -1
    if Input.is_action_pressed('move_right'):
        velocity.x = 1
    if Input.is_action_pressed('move_up'):
        velocity.y = -1

    velocity = velocity.normalized()

    sprite.playing = velocity != Vector2.ZERO

    if velocity.x:
        if velocity.x > 0:
            sprite.scale.x = abs(sprite.scale.x)
            vegetable_sprite.scale.x = abs(vegetable_sprite.scale.x)
            vegetable_sprite.position.x = abs(vegetable_sprite.position.x)
        else:
            sprite.scale.x = -abs(sprite.scale.x)
            vegetable_sprite.scale.x = -abs(vegetable_sprite.scale.x)
            vegetable_sprite.position.x = -abs(vegetable_sprite.position.x)

    move_and_slide(velocity * speed)


func spawn_basket():
    var basket = BasketScene.instance()
    get_parent().call_deferred('add_child', basket)
    if baskets.empty():
        basket.position = position + Vector2(100, 0)
        basket.set_follow_target(self)
    else:
        basket.position = baskets.back().position + (baskets.back().position - baskets.back().follow_target.position)
        basket.set_follow_target(baskets.back())
    baskets.append(basket)
    return basket

func get_baskets():
    return baskets

func lose_basket(basket_to_lose: Node2D):
    if !(basket_to_lose in baskets):
        return

    for i in baskets.size():
        if baskets[i] == basket_to_lose:
            if i < baskets.size() - 1:
                baskets[i+1].set_follow_target(basket_to_lose.follow_target)
            baskets.pop_at(i)
            basket_to_lose.destroy()
            PlayerStats.powerup_baskets -= 1
            return

func set_held_vegetable(vegetable) -> void:
    held_vegetable = vegetable
    update_held_sprite()

func update_held_sprite() -> void:
    match held_vegetable:
        Vegetable.VegetableType.Potato:
            vegetable_sprite.animation = 'Potato'
        Vegetable.VegetableType.Tomato:
            vegetable_sprite.animation = 'Tomato'
        Vegetable.VegetableType.Carrot:
            vegetable_sprite.animation = 'Carrot'
        _:
            vegetable_sprite.animation = 'None'

func drop_off_vegetables(veges_to_drop: Dictionary):
    # TODO: shift vegetables up baskets?
    if held_vegetable in veges_to_drop:
        veges_to_drop[held_vegetable] -= 1
        if veges_to_drop[held_vegetable] == 0:
            veges_to_drop.erase(held_vegetable)
        set_held_vegetable(null)

    for basket in baskets:
        if basket.held_vegetable in veges_to_drop:
            veges_to_drop[basket.held_vegetable] -= 1
            if veges_to_drop[basket.held_vegetable] == 0:
                veges_to_drop.erase(basket.held_vegetable)
            basket.held_vegetable = null

func _on_Area2D_area_entered(area:Area2D) -> void:
    if area.collision_layer == 1 << 1:
        var vegetable = area.get_parent()
        if held_vegetable == null:
            set_held_vegetable(vegetable.vegetable_type)
            vegetable.queue_free()
        else:
            for basket in baskets:
                if basket.held_vegetable == null:
                    basket.held_vegetable = vegetable.vegetable_type
                    # TODO: make vegetable fly to basket?
                    vegetable.queue_free()
                    break
    elif area.collision_layer == 1 << 6:
        var powerup = area.get_parent()
        if powerup.powerup_type == Powerup.PowerupType.SpeedBoots:
            print('picked up boots')
            speed += boot_bonus_speed
            PlayerStats.powerup_boots += 1
        elif powerup.powerup_type == Powerup.PowerupType.Basket:
            print('picked up basket')
            PlayerStats.powerup_baskets += 1
            spawn_basket()
        powerup.queue_free()

# Invincibility functionality

func set_invincible(value):
    invincible = value
    if invincible == true:
        emit_signal("invincibility_started")
    else:
        emit_signal("invincibility_ended")

func start_invincibility(duration):
    self.invincible = true
    timer.start(duration)
    animation.play("blink")

func _on_InvinciblityTimer_timeout():
    self.invincible = false

func _on_Player_invincibility_started():
    print("Invincibility started")
    area.set_deferred("monitorable", false)

func _on_Player_invincibility_ended():
    print("Invincibility ended")
    area.monitorable = true
    animation.stop(true)
