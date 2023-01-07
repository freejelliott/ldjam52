extends Control

var hearts = 3 setget set_hearts
var max_hearts = 3 setget set_max_hearts

onready var label = $Label

func set_hearts(value):
    hearts = clamp(value, 0, max_hearts)
    if label != null:
        label.text ="HP = " + str(hearts)

func set_max_hearts(value):
    max_hearts = max(value, 1)

# Called when the node enters the scene tree for the first time.
func _ready():
    self.max_hearts = PlayerStats.max_health
    self.hearts = PlayerStats.health
    PlayerStats.connect("health_change", self, "set_hearts")