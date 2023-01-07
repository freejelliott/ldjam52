extends KinematicBody2D

export var speed = 0.01
export var player_path: NodePath
export var path_path: NodePath

onready var player = get_node(player_path)
onready var path = get_node(path_path)
onready var last_position = position
onready var up_collision = $UpCollision
onready var left_collision = $LeftCollision
onready var right_collision = $RightCollision
onready var down_collision = $DownCollision
onready var area_up_collision = $Area2D/UpCollision
onready var area_left_collision = $Area2D/LeftCollision
onready var area_right_collision = $Area2D/RightCollision
onready var area_down_collision = $Area2D/DownCollision
var stats = PlayerStats

var heading = Vector2.LEFT


func disable_all_collisions() -> void:
    up_collision.disabled = true
    left_collision.disabled = true
    right_collision.disabled = true
    down_collision.disabled = true
    area_up_collision.disabled = true
    area_left_collision.disabled = true
    area_right_collision.disabled = true
    area_down_collision.disabled = true

    up_collision.visible = false
    left_collision.visible = false
    right_collision.visible = false
    down_collision.visible = false
    area_up_collision.visible = false
    area_left_collision.visible = false
    area_right_collision.visible = false
    area_down_collision.visible = false


func _physics_process(delta: float) -> void:
    var follow : PathFollow2D = path.get_node('PathFollow2D')
    position = follow.global_position

    var direction = position - last_position
    direction = direction.normalized()

    last_position = position

    var new_heading

    if direction.dot(Vector2.UP) > 0.9:
        new_heading = Vector2.UP
    elif direction.dot(Vector2.LEFT) > 0.9:
        new_heading = Vector2.LEFT
    elif direction.dot(Vector2.RIGHT) > 0.9:
        new_heading = Vector2.RIGHT
    else:
        new_heading = Vector2.DOWN

    if new_heading != heading:
        heading = new_heading
        disable_all_collisions()

        # Good shit.
        if heading == Vector2.UP:
            $AnimatedSprite.animation = 'Top'
            $AnimatedSprite.scale = abs($AnimatedSprite.scale.x) * Vector2(1, -1)
            up_collision.disabled = false
            up_collision.visible = true
            area_up_collision.disabled = false
            area_up_collision.visible = true
        elif heading == Vector2.LEFT:
            $AnimatedSprite.animation = 'Side'
            $AnimatedSprite.scale = abs($AnimatedSprite.scale.x) * Vector2(1, 1)
            left_collision.disabled = false
            left_collision.visible = true
            area_left_collision.disabled = false
            area_left_collision.visible = true
        elif heading == Vector2.RIGHT:
            $AnimatedSprite.animation = 'Side'
            $AnimatedSprite.scale = abs($AnimatedSprite.scale.x) * Vector2(-1, 1)
            right_collision.disabled = false
            right_collision.visible = true
            area_right_collision.disabled = false
            area_right_collision.visible = true
        else:
            $AnimatedSprite.animation = 'Top'
            $AnimatedSprite.scale = abs($AnimatedSprite.scale.x) * Vector2(1, 1)
            down_collision.disabled = false
            down_collision.visible = true
            area_down_collision.disabled = false
            area_down_collision.visible = true

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
