extends RigidBody2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

# The first item in the array is furthest away from the player.
var pickups: Array = []

export var force = 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
   pass

func _integrate_forces(state) -> void:
    var exert = Vector2.ZERO
    if Input.is_action_pressed('move_down'):
        exert.y = 1
    if Input.is_action_pressed('move_left'):
        exert.x = -1
    if Input.is_action_pressed('move_right'):
        exert.x = 1
    if Input.is_action_pressed('move_up'):
        exert.y = -1

    exert = exert.normalized()
    applied_force = exert*force

func get_last_item():
    if pickups.empty():
        return null
    return pickups.front()

func drop_item(item_to_drop: Node2D):
    # TODO: could just drop the one item instead of it and all the items following it.

    # TODO: inefficient to pop from the front multiple tiems.
    while true:
        var dropped_item = pickups.pop_front()
        dropped_item.queue_free()
        if dropped_item == item_to_drop:
            return

func drop_all_items():
    for item in pickups:
        item.queue_free()
    pickups.clear()


func _on_Area2D_area_entered(area:Area2D) -> void:
    area.collision_layer = 1 << 3  # Put item on following_items layer so it isn't picked up again.
    var pickup = area.get_parent()

    pickup.set_follow_target(self)
    if !pickups.empty():
        pickups.back().set_follow_target(pickup)

    pickups.append(pickup)
