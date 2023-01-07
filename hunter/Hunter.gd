extends Node2D

export var speed = 300
export var player_path : NodePath

onready var player = get_node(player_path)
onready var area: Area2D = $Area2D
onready var eating_timer: Timer = $EatingTimer

func _physics_process(delta: float) -> void:
    if !eating_timer.is_stopped():
        # Don't move while eating.
        return

    # Hunter follows the last vegetable the player is carrying or stands still if
    # nothing is being carried.
    var follow_target = player.get_last_vegetable()
    if follow_target:
        var velocity = follow_target.position - position

        velocity = velocity.normalized()

        position += velocity * speed * delta


func _on_Area2D_area_entered(other_area:Area2D) -> void:
    var vegetable = other_area.get_parent()
    area.set_deferred('monitoring', false)
    player.drop_vegetable(vegetable)
    eating_timer.start()
    print('hunter is eating')


func _on_EatingTimer_timeout() -> void:
    print('hunter finished eating')
    area.monitoring = true
