extends Control

onready var label_boots = $LabelBoots
onready var label_baskets = $LabelBaskets

var powerup_boots = 0
var powerup_baskets = 0

func set_powerup_boots(value):
    if label_boots != null:
        label_boots.text = str(PlayerStats.powerup_boots)

func set_powerup_baskets(value):
     if label_baskets != null:
        label_baskets.text = str(PlayerStats.powerup_baskets)

# Called when the node enters the scene tree for the first time.
func _ready():
    self.powerup_boots = PlayerStats.powerup_boots
    PlayerStats.connect("boots_changed", self, "set_powerup_boots")
    self.powerup_baskets = PlayerStats.powerup_baskets
    PlayerStats.connect("baskets_changed", self, "set_powerup_baskets")

