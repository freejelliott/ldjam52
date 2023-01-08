extends Node2D

var Vegetable = preload('res://vegetable/Vegetable.gd')

signal no_lives

onready var request_timer: Timer = $RequestTimer
onready var new_request_timer: Timer = $NewRequestTimer
onready var request: Control = $Request
onready var request_progress: TextureProgress = $Request/TextureProgress
onready var request_container: HBoxContainer = $Request/HBoxContainer
onready var template_tomato : TextureRect = $Request/HBoxContainer/TemplateTomato
onready var template_potato : TextureRect = $Request/HBoxContainer/TemplatePotato
onready var template_carrot : TextureRect = $Request/HBoxContainer/TemplateCarrot
onready var health_bar : Label = $Health/Label
onready var particles: Particles2D = $Particles2D

export var max_lives = 3

onready var lives = max_lives

var requested_vegetables: Dictionary = {}
var stats = PlayerStats


func _ready() -> void:
    request.visible = false
    health_bar.text = 'Lives: %d' % lives
    for child in request_container.get_children():
        request_container.remove_child(child)


func _process(delta: float) -> void:
    if !request_timer.is_stopped():
        request_progress.value = ((request_timer.wait_time - request_timer.time_left)/float(request_timer.wait_time)) * 100

func vegetables_equal(v1: Dictionary, v2: Dictionary) -> bool:
    for key in v1:
        if v1[key] != v2[key]:
            return false
    return true

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


func _on_NewRequestTimer_timeout() -> void:
    for vegetable_type in Vegetable.VegetableType.values():
        requested_vegetables[vegetable_type] = 0

    for i in rand_range(1, 6):
        requested_vegetables[Vegetable.VegetableType.values()[rand_range(0, Vegetable.VegetableType.size())]] += 1
    print('Den wants %s' % [requested_vegetables])
    request_timer.start()
    for child in request_container.get_children():
        request_container.remove_child(child)

    for i in requested_vegetables[Vegetable.VegetableType.Potato]:
        var icon = template_potato.duplicate()
        icon.visible = true
        request_container.add_child(icon)
    for i in requested_vegetables[Vegetable.VegetableType.Tomato]:
        var icon = template_tomato.duplicate()
        icon.visible = true
        request_container.add_child(icon)
    for i in requested_vegetables[Vegetable.VegetableType.Carrot]:
        var icon = template_carrot.duplicate()
        icon.visible = true
        request_container.add_child(icon)
    request.visible = true


func _on_Area2D_area_entered(area:Area2D) -> void:
    if requested_vegetables.empty():
        print('Den has no request')
        return

    var player = area.get_parent()

    var player_vegetables = {}
    for vegetable_type in Vegetable.VegetableType.values():
        player_vegetables[vegetable_type] = 0

    for vegetable in player.get_vegetables():
        player_vegetables[vegetable.vegetable_type] += 1

    print('Player hit den holding %s' % [player_vegetables])

    if !vegetables_equal(player_vegetables, requested_vegetables):
        print('Player brought wrong vegetables')
        return

    print('Player brought correct vegetables')
    particles.emitting = true
    stats.score += 1

    cancel_request()
    player.drop_all_vegetables()
