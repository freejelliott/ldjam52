extends Node2D

var Vegetable = preload('res://vegetable/Vegetable.gd')

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

onready var request_timer: Timer = $RequestTimer
onready var new_request_timer: Timer = $NewRequestTimer
onready var control: Control = $Control
onready var label: Label = $Control/PanelContainer/Label
onready var progress: TextureProgress = $Control/PanelContainer/TextureProgress


var requested_vegetables: Dictionary = {}


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    control.visible = false
    pass # Replace with function body.


func _process(delta: float) -> void:
    if !request_timer.is_stopped():
        progress.value = ((request_timer.wait_time - request_timer.time_left)/float(request_timer.wait_time)) * 100

func vegetables_equal(v1: Dictionary, v2: Dictionary) -> bool:
    for key in v1:
        if v1[key] != v2[key]:
            return false
    return true

func cancel_request() -> void:
    requested_vegetables.clear()
    new_request_timer.start()
    request_timer.stop()
    control.visible = false

func _on_RequestTimer_timeout() -> void:
    # TODO: Get angry that the request wasn't completed.
    print('Den request timed out')
    cancel_request()


func _on_NewRequestTimer_timeout() -> void:
    for vegetable_type in Vegetable.VegetableType.values():
        requested_vegetables[vegetable_type] = 0

    for i in rand_range(1, 6):
        requested_vegetables[Vegetable.VegetableType.values()[rand_range(0, Vegetable.VegetableType.size())]] += 1
    print('Den wants %s' % [requested_vegetables])
    request_timer.start()
    label.text = ''
    label.text += 'Potatoes: %d\n' % requested_vegetables[Vegetable.VegetableType.Potato]
    label.text += 'Tomatoes: %d\n' % requested_vegetables[Vegetable.VegetableType.Tomato]
    label.text += 'Carrots: %d' % requested_vegetables[Vegetable.VegetableType.Carrot]
    control.visible = true


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

    cancel_request()
    player.drop_all_vegetables()
