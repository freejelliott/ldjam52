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
onready var sniff_audio: AudioStreamPlayer2D = $SniffSound
onready var barking_audio: AudioStreamPlayer2D = $BarkingSound
onready var yelp_audio: AudioStreamPlayer2D = $YelpSound

var hurt = false

func _ready() -> void:
    sniff_audio.play(rand_range(0, sniff_audio.stream.get_length()))

func _physics_process(delta: float) -> void:
    if !eating_timer.is_stopped() or !stun_timer.is_stopped() or !rest_timer.is_stopped():
        # Don't move while eating or resting or stunned.
        return

    var follow_target = null
    if hurt:
        # Hunter goes home.
        follow_target = home
    else:
        # Hunter follows the player or the closest full basket the player is
        # carrying or stands still if nothing is being carried.

        var distance_to_closest_target: float
        if player.held_vegetable != null:
            follow_target = player
            distance_to_closest_target = (player.position - position).length()
        else:
            distance_to_closest_target = 9999999999999 # kek

        for basket in player.get_baskets():
            if basket.held_vegetable == null:
                continue
            var distance = (basket.position - position).length()
            if distance < distance_to_closest_target:
                distance_to_closest_target = distance
                follow_target = basket

    if follow_target:
        var velocity = follow_target.position - position

        velocity = velocity.normalized()

        sprite.playing = velocity != Vector2.ZERO

        if velocity.x:
            if velocity.x > 0:
                sprite.scale.x = -abs(sprite.scale.x)
            else:
                sprite.scale.x = abs(sprite.scale.x)

        position += velocity * speed * delta
    else:
        sprite.playing = false


func start_eating() -> void:
    print('hunter is eating')
    area.set_deferred('monitoring', false)
    sniff_audio.playing = false
    sprite.animation = 'eating'
    sprite.playing = true
    eating_timer.start()


func _on_Area2D_area_entered(other_area:Area2D) -> void:
    if other_area.collision_layer == (1 << 5):
        if hurt:
            print('hunter is resting')
            sprite.animation = 'sleeping'
            area.set_deferred('monitoring', false)
            rest_timer.start()
    elif other_area.collision_layer == 1:
        if !hurt:
            var player = other_area.get_parent()
            if player.held_vegetable == null:
                return
            player.set_held_vegetable(null)
            start_eating()
    else:
        if !hurt:
            var basket = other_area.get_parent().get_parent()
            if basket.held_vegetable == null:
                return
            basket.held_vegetable = null
            #player.lose_basket(basket)
            start_eating()


func stun() -> void:
    hurt = true
    sniff_audio.playing = false
    yelp_audio.play()
    barking_audio.play()
    sprite.modulate = Color(1, 1, 1, 0.5)
    area.set_deferred('monitorable', false)
    area.set_deferred('monitoring', false)
    print('hunter is stunned')
    sprite.animation = 'hurt'
    sprite.playing = true
    stun_timer.start()
    eating_timer.stop()


func _on_EatingTimer_timeout() -> void:
    print('hunter finished eating')
    sniff_audio.playing = true
    sprite.animation = 'default'
    area.monitoring = true


func _on_StunTimer_timeout() -> void:
    print('hunter is no longer stunned')
    area.monitoring = true
    sprite.animation = 'default'
    sprite.playing = true


func _on_RestTimer_timeout() -> void:
    print('hunter finished resting')
    area.monitoring = true
    area.monitorable = true
    hurt = false
    sniff_audio.playing = true
    sprite.animation = 'default'
    sprite.playing = true
    sprite.modulate = Color(1, 1, 1, 1)
