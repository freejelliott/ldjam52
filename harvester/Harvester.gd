extends Node2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

export var speed = 300
export var player_path: NodePath
export var horizontal = true

onready var player = get_node(player_path)

var direction = Vector2.RIGHT

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    if !horizontal:
        direction = Vector2.UP


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#    pass

func _physics_process(delta: float) -> void:
    if position.x > 1000:
        direction = Vector2.LEFT
    elif position.x < -1000:
        direction = Vector2.RIGHT

    if position.y > 1000:
        direction = Vector2.UP
    elif position.y < -1000:
        direction = Vector2.DOWN

    var velocity = direction

    position += velocity * speed * delta

func _on_Area2D_area_entered(area:Area2D) -> void:
    if area.collision_layer == 1:
        # Player
        player.drop_all_vegetables()
    elif area.collision_layer == 1 << 1:
        # Vegetable on ground
        var vegetable = area.get_parent()
        vegetable.queue_free()
    elif area.collision_layer == 1 << 2:
        # Hunter
        var hunter = area.get_parent()
        # TODO: spawn a new hunter
        # TODO: stun the hunter instead for a while?
        hunter.queue_free()
    elif area.collision_layer == 1 << 3:
        # Vegetable held by player
        var vegetable = area.get_parent()
        player.drop_vegetable(vegetable)
