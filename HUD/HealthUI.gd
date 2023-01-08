extends Control

var hearts = 3 setget set_hearts
var max_hearts = 3 setget set_max_hearts

onready var progress = $TextureProgress

onready var heart1 = $HBoxContainer/Heart1
onready var heart2 = $HBoxContainer/Heart2
onready var heart3 = $HBoxContainer/Heart3

func set_hearts(value):
    hearts = clamp(value, 0, max_hearts)
    if progress != null:
        progress.value = (hearts/float(max_hearts))*100

    heart1.modulate = Color(1, 1, 1, hearts >= 1)
    heart2.modulate = Color(1, 1, 1, hearts >= 2)
    heart3.modulate = Color(1, 1, 1, hearts >= 3)


func set_max_hearts(value):
    max_hearts = max(value, 1)

# Called when the node enters the scene tree for the first time.
func _ready():
    self.max_hearts = PlayerStats.max_health
    self.hearts = PlayerStats.health
    PlayerStats.connect("health_changed", self, "set_hearts")
