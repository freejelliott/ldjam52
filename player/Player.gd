extends KinematicBody2D

# The first vegetable in the array is furthest away from the player.
var vegetables: Array = []

export var speed = 100

onready var sprite: AnimatedSprite = $AnimatedSprite

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

    if velocity.x:
        if velocity.x > 0:
            sprite.scale.x = abs(sprite.scale.x)
        else:
            sprite.scale.x = -abs(sprite.scale.x)

    move_and_slide(velocity * speed)


func get_vegetables():
    return vegetables

func get_last_vegetable():
    if vegetables.empty():
        return null
    return vegetables.front()

func drop_vegetable(vegetable_to_drop: Node2D):
    # TODO: could just drop the one vegetable instead of it and all the vegetables following it.

    # TODO: inefficient to pop from the front multiple tiems.
    while true:
        var dropped_vegetable = vegetables.pop_front()
        if !dropped_vegetable:
            return
        dropped_vegetable.destroy()
        if dropped_vegetable == vegetable_to_drop:
            return

func drop_vegetables(veges_to_drop: Dictionary):
    var start_idx := vegetables.size()-1
    var to_remove := []
    # Loop through our owned veges starting nearest to us.
    for i in range(vegetables.size()-1, -1, -1):
        # Check if we should drop the veg.
        var found_v
        for v_drop in veges_to_drop:
            if vegetables[i].vegetable_type == v_drop and veges_to_drop[v_drop] != 0:
                found_v = vegetables[i]
                to_remove.append(found_v)
                veges_to_drop[v_drop] -= 1
        if found_v == null:
            # We shouldn't drop this veg.
            vegetables[start_idx] = vegetables[i]
            start_idx -= 1
            continue

        if veges_to_drop[found_v.vegetable_type] == 0:
            veges_to_drop.erase(found_v.vegetable_type)

    if start_idx == vegetables.size()-1:
        vegetables.clear()
    else:
        vegetables = vegetables.slice(start_idx+1, vegetables.size()-1)
        for i in range(vegetables.size()-1):
            vegetables[i].set_follow_target(vegetables[i+1])
        vegetables.back().set_follow_target(self)

    for v in to_remove:
        v.destroy()

func drop_all_vegetables():
    for vegetable in vegetables:
        vegetable.destroy()
    vegetables.clear()


func _on_Area2D_area_entered(area:Area2D) -> void:
    # Put vegetable on following_vegetables layer so it isn't picked up again.
    area.collision_layer = 1 << 3
    var vegetable = area.get_parent()

    vegetable.set_follow_target(self)
    if !vegetables.empty():
        vegetables.back().set_follow_target(vegetable)

    vegetables.append(vegetable)

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
