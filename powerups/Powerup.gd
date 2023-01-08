extends Node2D


enum PowerupType {
    SpeedBoots
    Basket
}

export(PowerupType) var powerup_type

onready var sprite: Sprite = $Sprite

func _init() -> void:
    powerup_type = PowerupType.values()[rand_range(0, PowerupType.size())]

func _ready() -> void:
    match powerup_type:
        PowerupType.SpeedBoots:
            sprite.modulate = Color.yellow
        PowerupType.Basket:
            sprite.modulate = Color.brown