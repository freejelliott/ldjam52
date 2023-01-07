extends KinematicBody2D

# The first vegetable in the array is furthest away from the player.
var vegetables: Array = []

export var speed = 100

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
        dropped_vegetable.queue_free()
        if dropped_vegetable == vegetable_to_drop:
            return

func drop_all_vegetables():
    for vegetable in vegetables:
        vegetable.queue_free()
    vegetables.clear()


func _on_Area2D_area_entered(area:Area2D) -> void:
    # Put vegetable on following_vegetables layer so it isn't picked up again.
    area.collision_layer = 1 << 3
    var vegetable = area.get_parent()

    vegetable.set_follow_target(self)
    if !vegetables.empty():
        vegetables.back().set_follow_target(vegetable)

    vegetables.append(vegetable)
