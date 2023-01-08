extends Node2D

var Vegetable = preload('res://vegetable/Vegetable.gd')
var PowerupScene = preload('res://powerups/Powerup.tscn')

signal no_lives

onready var request_timer: Timer = $RequestTimer
onready var new_request_timer: Timer = $NewRequestTimer
onready var request: PanelContainer = $Request
onready var request_progress: TextureProgress = $Request/VBoxContainer/TextureProgress
onready var request_container: GridContainer = $Request/VBoxContainer/GridContainer
onready var template_tomato : TextureRect = $Request/VBoxContainer/GridContainer/TemplateTomato
onready var template_potato : TextureRect = $Request/VBoxContainer/GridContainer/TemplatePotato
onready var template_carrot : TextureRect = $Request/VBoxContainer/GridContainer/TemplateCarrot
onready var health_bar : Label = $Health/Label
onready var particles: Particles2D = $Particles2D
onready var powerup_position: Position2D = $PowerupPosition
onready var tween: Tween = $Tween

export var max_lives = 3

onready var lives = max_lives

var requested_vegetables: Dictionary = {}
var stats = PlayerStats

func _ready() -> void:
    request.visible = false
    health_bar.text = 'Lives: %d' % lives
    for child in request_container.get_children():
        request_container.remove_child(child)

    # TODO: remove
    call_deferred('debug_spawn_powerups')

func debug_spawn_powerups():
    for i in 5:
        spawn_powerup()

func _process(delta: float) -> void:
    if !request_timer.is_stopped():
        request_progress.value = ((request_timer.wait_time - request_timer.time_left)/float(request_timer.wait_time)) * 100

func cancel_request() -> void:
    requested_vegetables.clear()
    new_request_timer.start()
    request_timer.stop()
    request.visible = false

func _on_RequestTimer_timeout() -> void:
    print('Den request timed out')
    lives -= 1
    # TODO: show lives as number of children in the den.
    health_bar.text = 'Lives: %d' % lives
    if lives == 0:
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
    # TODO: difficulty based on number of baskets? score? time?
    for i in rand_range(1, 3):
        var vegetable_type = Vegetable.VegetableType.values()[rand_range(0, Vegetable.VegetableType.size())]
        if vegetable_type in requested_vegetables:
            requested_vegetables[vegetable_type] += 1
        else:
            requested_vegetables[vegetable_type] = 1

    print('Den wants %s' % [requested_vegetables])
    request_timer.start()
    update_request()
    request.visible = true

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
        particles.emitting = true
        stats.score += 1
        cancel_request()
        spawn_powerup()
    else:
        update_request()
