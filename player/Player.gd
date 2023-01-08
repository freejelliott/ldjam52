extends KinematicBody2D

var Powerup = preload('res://powerups/Powerup.gd')
var BasketScene = preload('res://basket/Basket.tscn')

# The first basket in the array is closeset to the player.
var baskets: Array = []

export var speed = 100

onready var sprite: AnimatedSprite = $AnimatedSprite

# Invincibility stuff
var invincible = false setget set_invincible
onready var timer = $InvinciblityTimer
onready var area: Area2D = $Area2D
signal invincibility_started
signal invincibility_ended

func _ready() -> void:
    var basket = spawn_basket()

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

    if velocity.x:
        if velocity.x > 0:
            sprite.scale.x = abs(sprite.scale.x)
        else:
            sprite.scale.x = -abs(sprite.scale.x)

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
            return

func drop_off_vegetables(veges_to_drop: Dictionary):
    # TODO: shift vegetables up baskets?
    for basket in baskets:
        if basket.holding_vegetable in veges_to_drop:
            veges_to_drop[basket.holding_vegetable] -= 1
            if veges_to_drop[basket.holding_vegetable] == 0:
                veges_to_drop.erase(basket.holding_vegetable)
            basket.holding_vegetable = null

func _on_Area2D_area_entered(area:Area2D) -> void:
    if area.collision_layer == 1 << 1:
        var vegetable = area.get_parent()
        for basket in baskets:
            if basket.holding_vegetable == null:
                basket.holding_vegetable = vegetable.vegetable_type
                # TODO: make vegetable fly to basket?
                vegetable.queue_free()
                break
    elif area.collision_layer == 1 << 6:
        var powerup = area.get_parent()
        if powerup.powerup_type == Powerup.PowerupType.SpeedBoots:
            speed += 50
        elif powerup.powerup_type == Powerup.PowerupType.Basket:
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
    # TODO: blink while invincible?
    timer.start(duration)

func _on_InvinciblityTimer_timeout():
    self.invincible = false

func _on_Player_invincibility_started():
    print("Invincibility started")
    area.set_deferred("monitorable", false)

func _on_Player_invincibility_ended():
    print("Invincibility ended")
    area.monitorable = true
