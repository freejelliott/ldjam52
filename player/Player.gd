extends KinematicBody2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

export var speed = 300


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
   pass


func _physics_process(delta: float) -> void:
    var velocity = Vector2.ZERO

    if Input.is_action_pressed('move_down'):
        move_and_collide(Vector2(0, 1))
    if Input.is_action_pressed('move_left'):
        move_and_collide(Vector2(-1, 0))
    if Input.is_action_pressed('move_right'):
        move_and_collide(Vector2(1, 0))
    if Input.is_action_pressed('move_up'):
        move_and_collide(Vector2(0, -1))

    velocity = velocity.normalized()

    position += velocity * speed * delta
