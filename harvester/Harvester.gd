extends KinematicBody2D

export var speed = 300
export var player_path: NodePath
export var horizontal = true

onready var player = get_node(player_path)
var stats = PlayerStats

var direction = Vector2.RIGHT

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    if !horizontal:
        direction = Vector2.UP

func _physics_process(delta: float) -> void:
    var collision = move_and_collide(direction * speed * delta)

    if collision:
        if direction == Vector2.RIGHT:
            direction = Vector2.LEFT
        elif direction == Vector2.LEFT:
            direction = Vector2.RIGHT
        elif direction == Vector2.UP:
            direction = Vector2.DOWN
        elif direction == Vector2.DOWN:
            direction = Vector2.UP

func _on_Area2D_area_entered(area:Area2D) -> void:
    if area.collision_layer == 1:
        # Player
        player.drop_all_vegetables()
        stats.health -= 1
        # TODO: invincibility frames
    elif area.collision_layer == 1 << 1:
        # Vegetable on ground
        var vegetable = area.get_parent()
        vegetable.queue_free()
    elif area.collision_layer == 1 << 2:
        # Hunter
        var hunter = area.get_parent()
        hunter.stun()
    elif area.collision_layer == 1 << 3:
        # Vegetable held by player
        var vegetable = area.get_parent()
        player.drop_vegetable(vegetable)
