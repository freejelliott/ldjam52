extends KinematicBody2D

enum HarvesterType {
    Side
    Top
}

export var speed = 300
export var player_path: NodePath
export var horizontal = true

onready var player = get_node(player_path)
var stats = PlayerStats

var direction = Vector2.RIGHT

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    # Set the harvester collision box and parameters based on its direction.
    var harvester_type = HarvesterType.Side
    var collision := $SideCollision
    var flip_factor := Vector2(-1, 1)
    if !horizontal:
        harvester_type = HarvesterType.Top
        collision = $TopCollision
        direction = Vector2.UP
        flip_factor = Vector2(1, -1)
    $AnimatedSprite.animation = HarvesterType.keys()[harvester_type]
    collision.disabled = 0
    var area_collision = collision.duplicate()
    $Area2D.add_child(area_collision)
    scale *= flip_factor

func _physics_process(delta: float) -> void:
    var collision = move_and_collide(direction * speed * delta)

    if collision:
        if direction == Vector2.RIGHT:
            direction = Vector2.LEFT
            $AnimatedSprite.scale *= Vector2(-1, 1)
        elif direction == Vector2.LEFT:
            direction = Vector2.RIGHT
            $AnimatedSprite.scale *= Vector2(-1, 1)
        elif direction == Vector2.UP:
            direction = Vector2.DOWN
            $AnimatedSprite.scale *= Vector2(1, -1)
        elif direction == Vector2.DOWN:
            direction = Vector2.UP
            $AnimatedSprite.scale *= Vector2(1, -1)

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
