extends Node2D

export var speed = 300
export var player_path : NodePath
export var home_path : NodePath

onready var player = get_node(player_path)
onready var home = get_node(home_path)
onready var area: Area2D = $Area2D
onready var sprite: AnimatedSprite = $AnimatedSprite
onready var eating_timer: Timer = $EatingTimer
onready var stun_timer: Timer = $StunTimer
onready var rest_timer: Timer = $RestTimer

var hurt = false

func _physics_process(delta: float) -> void:
    if !eating_timer.is_stopped() or !stun_timer.is_stopped() or !rest_timer.is_stopped():
        # Don't move while eating or resting or stunned.
        return

    var follow_target = null
    if hurt:
        # Hunter goes home.
        follow_target = home
    else:
        # Hunter follows the last vegetable the player is carrying or stands still if
        # nothing is being carried.
        follow_target = player.get_last_vegetable()

    if follow_target:
        var velocity = follow_target.position - position

        velocity = velocity.normalized()

        if velocity.x:
            if velocity.x > 0:
                sprite.scale.x = -abs(sprite.scale.x)
            else:
                sprite.scale.x = abs(sprite.scale.x)

        position += velocity * speed * delta


func _on_Area2D_area_entered(other_area:Area2D) -> void:
    if other_area.collision_layer == (1 << 5):
        if hurt:
            print('hunter is resting')
            area.set_deferred('monitoring', false)
            rest_timer.start()
    else:
        if !hurt:
            var vegetable = other_area.get_parent()
            area.set_deferred('monitoring', false)
            player.drop_vegetable(vegetable)
            print('hunter is eating')
            eating_timer.start()


func stun() -> void:
    hurt = true
    area.set_deferred('monitorable', false)
    area.set_deferred('monitoring', false)
    print('hunter is stunned')
    stun_timer.start()


func _on_EatingTimer_timeout() -> void:
    print('hunter finished eating')
    area.monitoring = true


func _on_StunTimer_timeout() -> void:
    print('hunter is no longer stunned')
    area.monitoring = true


func _on_RestTimer_timeout() -> void:
    print('hunter finished resting')
    area.monitoring = true
    area.monitorable = true
    hurt = false
