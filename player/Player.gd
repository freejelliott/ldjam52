extends KinematicBody2D

var Powerup = preload('res://powerups/Powerup.gd')
var BasketScene = preload('res://basket/Basket.tscn')
var Vegetable = preload('res://vegetable/Vegetable.gd')

# The first basket in the array is closeset to the player.
var baskets: Array = []
var held_vegetable = null

export var speed = 500#150 # TODO: change back

export var boot_bonus_speed = 50

export var warning_size_radius = 200.0

onready var sprite: AnimatedSprite = $AnimatedSprite
onready var vegetable_sprite: AnimatedSprite = $VegetableSprite
onready var blink_animation: AnimationPlayer = $BlinkAnimation
onready var death_animation: AnimationPlayer = $DeathAnimation
onready var audio = $AudioStreamPlayer

var nearby_enemies: Dictionary = {}

# Invincibility stuff
var invincible = false setget set_invincible
onready var timer = $InvinciblityTimer
onready var area: Area2D = $Area2D

func _process(delta: float) -> void:
    var c = get_canvas_transform()
    var view_size = get_viewport_rect().size / c.get_scale()
    
    for e in nearby_enemies:
        var v = e.position - $Camera2D.get_camera_screen_center()
        var orig_v = v
        if e.get_node("VisibilityNotifier2D").is_on_screen():
            nearby_enemies[e].visible = false
            continue
        else:
            nearby_enemies[e].visible = true

        var enemy_sprite = e.get_node("AnimatedSprite")
        var anim = enemy_sprite.animation
        nearby_enemies[e].animation = anim
        var s = nearby_enemies[e].frames.get_frame(anim, 0).get_size()
        var m = max(s.x, s.y)
        var sprite_scale = warning_size_radius / m

        var z = position-$Camera2D.get_camera_screen_center()
        v.x = clamp(v.x, -view_size.x/2+warning_size_radius-z.x, view_size.x/2-warning_size_radius-z.x)
        v.y = clamp(v.y, -view_size.y/2+warning_size_radius-z.y, view_size.y/2-warning_size_radius-z.y)
        nearby_enemies[e].position = v

        var f = v.length() / orig_v.length()
        nearby_enemies[e].scale.x = clamp(sprite_scale*f, 0, sprite_scale)
        nearby_enemies[e].scale.y = clamp(sprite_scale*f, 0, sprite_scale)

        if enemy_sprite.scale.x < 0:
            nearby_enemies[e].scale.x = -nearby_enemies[e].scale.x
        if enemy_sprite.scale.y < 0:
            nearby_enemies[e].scale.y = -nearby_enemies[e].scale.y

    update()

func _draw() -> void:
    for e in nearby_enemies:
        if not nearby_enemies[e].visible:
            continue
        var enemy_sprite = nearby_enemies[e]
        var anim = enemy_sprite.animation
        var enemy_sprite_size = enemy_sprite.frames.get_frame(anim, 0).get_size()*enemy_sprite.scale
        var r = max(enemy_sprite_size.x, enemy_sprite_size.y)/2

        var antialias = true
        var color = Color(0,0,0,1)
        var width = r/8
        var v = e.global_position - enemy_sprite.global_position
        draw_arc(enemy_sprite.position, r + r/8, 0, v.angle()-PI/8, 32, color, width, antialias)
        draw_arc(enemy_sprite.position, r + r/8, v.angle()+PI/8, TAU, 32, color, width, antialias)
        var array = PoolVector2Array()
        var from1 = enemy_sprite.position + polar2cartesian(r+r/8, v.angle()-PI/8)
        var to = enemy_sprite.position + polar2cartesian(((7*r)/4), v.angle())
        var from2 = enemy_sprite.position + polar2cartesian(r+r/8, v.angle()+PI/8)
        array.push_back(from1)
        array.push_back(to)
        array.push_back(from2)
        array.push_back(from1)
        draw_colored_polygon(array, Color(1,1,1,1))
        draw_line(from1, to, color, width/2)
        draw_line(from2, to, color, width/2)
        draw_circle(enemy_sprite.position, r + r/8, Color(1, 1, 1, 1))

func _physics_process(delta: float) -> void:
    if PlayerStats.health == 0:
        return

    var velocity = Vector2.ZERO
    if Input.is_action_pressed('move_down'):
        velocity.y = 1
    if Input.is_action_pressed('move_left'):
        velocity.x = -1
    if Input.is_action_pressed('move_right'):
        velocity.x = 1
    if Input.is_action_pressed('move_up'):
        velocity.y = -1
    if Input.is_action_pressed('click'):
        var mouse_pos = get_viewport().get_mouse_position()
        mouse_pos.x -= get_viewport_rect().size.x/2
        mouse_pos.y -= get_viewport_rect().size.y/2
        velocity = mouse_pos

    velocity = velocity.normalized()

    if sprite.animation != 'hurt':
        if velocity == Vector2.ZERO:
            sprite.animation = 'idle'
        else:
            sprite.animation = 'default'

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

func _on_OffscreenCheck_area_entered(area:Area2D) -> void:
    var enemy = area.get_parent()
    var s = enemy.get_node("AnimatedSprite").duplicate()
    nearby_enemies[enemy] = s
    add_child(s)
    print('Enemy nearby: ', nearby_enemies)

func _on_OffscreenCheck_area_exited(area:Area2D) -> void:
    var enemy = area.get_parent()
    nearby_enemies[enemy].queue_free()
    nearby_enemies.erase(enemy)
    print('Enemy gone: ', nearby_enemies)

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
        var powerup = area.get_parent().get_parent()
        if powerup.powerup_type == Powerup.PowerupType.SpeedBoots:
            print('picked up boots')
            speed += boot_bonus_speed
            PlayerStats.powerup_boots += 1
        elif powerup.powerup_type == Powerup.PowerupType.Basket:
            print('picked up basket')
            PlayerStats.powerup_baskets += 1
            spawn_basket()
        elif powerup.powerup_type == Powerup.PowerupType.ExtraLife:
            print('picked up extra life')
            PlayerStats.health += 1
        elif powerup.powerup_type == Powerup.PowerupType.ExtraChildLife:
            print('picked up extra child life')
            PlayerStats.child_lives += 1
        powerup.queue_free()

func hurt() -> void:
    if !invincible:
        PlayerStats.health -= 1
        start_invincibility(3)
        audio.play()
        sprite.animation = 'hurt'
        yield(sprite, 'animation_finished')
        sprite.animation = 'default'

func die() -> void:
    blink_animation.stop()
    death_animation.play('death')
    yield(death_animation, 'animation_finished')

# Invincibility functionality

func set_invincible(value):
    invincible = value
    if invincible == true:
        emit_signal("invincibility_started")
    else:
        emit_signal("invincibility_ended")

func start_invincibility(duration):
    if PlayerStats.health <= 0:
        return
    self.invincible = true
    timer.start(duration)
    blink_animation.play("blink")

func _on_InvinciblityTimer_timeout():
    self.invincible = false
    blink_animation.stop(true)
