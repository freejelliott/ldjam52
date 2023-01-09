extends Node2D

var Vegetable = preload('res://vegetable/Vegetable.gd')
var PowerupScene = preload('res://powerups/Powerup.tscn')

signal no_lives

onready var sprite: AnimatedSprite = $AnimatedSprite
onready var request_timer: Timer = $RequestTimer
onready var new_request_timer: Timer = $NewRequestTimer
onready var request: PanelContainer = $Request
onready var request_progress: TextureProgress = $TextureProgress
onready var request_container: GridContainer = $Request/VBoxContainer/GridContainer
onready var template_tomato : TextureRect = $Request/VBoxContainer/GridContainer/TemplateTomato
onready var template_potato : TextureRect = $Request/VBoxContainer/GridContainer/TemplatePotato
onready var template_carrot : TextureRect = $Request/VBoxContainer/GridContainer/TemplateCarrot
onready var particles: Particles2D = $Particles2D
onready var powerup_position: Position2D = $PowerupPosition
onready var tween: Tween = $Tween
onready var hooray_audio = $HooraySound
onready var fail_audio = $FailSound

var first_request_given = false

var requested_vegetables: Dictionary = {}
var stats = PlayerStats

func _ready() -> void:
    request.visible = false
    request_progress.visible = false
    for child in request_container.get_children():
        request_container.remove_child(child)

    PlayerStats.connect("child_health_changed", self, "_on_child_health_changed")

    #call_deferred('debug_spawn_powerups')

func debug_spawn_powerups():
    for i in 5:
        spawn_powerup()

func _process(delta: float) -> void:
    if !request_timer.is_stopped():
        request_progress.value = 100 - (((request_timer.wait_time - request_timer.time_left)/float(request_timer.wait_time)) * 100)

func cancel_request() -> void:
    requested_vegetables.clear()
    new_request_timer.start()
    request_timer.stop()
    request.visible = false
    request_progress.visible = false

func _on_child_health_changed(health):
    match PlayerStats.child_lives:
        1:
            sprite.animation = '1'
        2:
            sprite.animation = '2'
        3:
            sprite.animation = '3'

func _on_RequestTimer_timeout() -> void:
    print('Den request timed out')
    fail_audio.play()
    PlayerStats.child_lives -= 1
    if PlayerStats.child_lives == 0:
        emit_signal('no_lives')
    cancel_request()

func update_request() -> void:
    for child in request_container.get_children():
        request_container.remove_child(child)

    for i in requested_vegetables.get(Vegetable.VegetableType.Potato, 0):
        var icon = template_potato.duplicate()
        icon.visible = true
        request_container.add_child(icon)
    for i in requested_vegetables.get(Vegetable.VegetableType.Tomato, 0):
        var icon = template_tomato.duplicate()
        icon.visible = true
        request_container.add_child(icon)
    for i in requested_vegetables.get(Vegetable.VegetableType.Carrot, 0):
        var icon = template_carrot.duplicate()
        icon.visible = true
        request_container.add_child(icon)


func _on_NewRequestTimer_timeout() -> void:
    if !first_request_given:
        first_request_given = true
        # The first request is intentionally very easy.
        requested_vegetables[Vegetable.VegetableType.Carrot] = 1
    elif PlayerStats.score == 0:
        var vegetable_type = Vegetable.get_random_vegetable_type()
        requested_vegetables[vegetable_type] = 1
    else:
        var carry_slots : float = PlayerStats.powerup_baskets + 1
        var score : float = PlayerStats.score
        var min_items = carry_slots*score/30 + score/10
        var max_items = carry_slots*2*(score/30) + score/5
        print('request range is %f to %f' % [min_items, max_items])
        for i in rand_range(min_items, max_items):
            var vegetable_type = Vegetable.get_random_vegetable_type()
            if vegetable_type in requested_vegetables:
                requested_vegetables[vegetable_type] += 1
            else:
                requested_vegetables[vegetable_type] = 1

    print('Den wants %s' % [requested_vegetables])
    request_timer.start()
    update_request()
    request.visible = true
    request_progress.visible = true

func spawn_powerup() -> void:
    var powerup = PowerupScene.instance()
    get_parent().add_child(powerup)
    tween.interpolate_property(powerup, "position",
        position, position + powerup_position.position, 1,
        Tween.TRANS_QUAD, Tween.EASE_IN_OUT)
    tween.start()
    yield(tween, "tween_completed")
    powerup.set_pickupable(true)


func _on_Area2D_area_entered(area:Area2D) -> void:
    if requested_vegetables.empty():
        print('Den has no request')
        return

    var player = area.get_parent()
    player.drop_off_vegetables(requested_vegetables)
    print(requested_vegetables)

    if requested_vegetables.empty():
        print('request complete')
        hooray_audio.play()
        particles.emitting = true
        stats.score += 1
        cancel_request()
        spawn_powerup()
    else:
        update_request()
