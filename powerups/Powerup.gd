extends Node2D


enum PowerupType {
    SpeedBoots
    Basket
}

export(PowerupType) var powerup_type

onready var sprite: Sprite = $Sprite
onready var area: Area2D = $Area2D

func _init() -> void:
    powerup_type = PowerupType.values()[rand_range(0, PowerupType.size())]

func _ready() -> void:
    match powerup_type:
        PowerupType.SpeedBoots:
            sprite.modulate = Color.yellow
        PowerupType.Basket:
            sprite.modulate = Color.brown

func set_pickupable(b:bool) -> void:
    area.monitorable = b