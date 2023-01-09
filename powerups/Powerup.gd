extends Node2D


enum PowerupType {
    SpeedBoots
    Basket
    ExtraLife
}

export(PowerupType) var powerup_type

onready var sprite: Sprite = $Sprite
onready var area: Area2D = $Area2D

func _init() -> void:
    if PlayerStats.health == 3:
        powerup_type = PowerupType.values()[rand_range(0, PowerupType.size())-1]
        print(powerup_type)
    else:
        powerup_type = PowerupType.values()[rand_range(0, PowerupType.size())]

func _ready() -> void:
    match powerup_type:
        PowerupType.SpeedBoots:
            sprite.modulate = Color.yellow
        PowerupType.Basket:
            sprite.modulate = Color.brown
        PowerupType.ExtraLife:
            sprite.modulate = Color.pink

func set_pickupable(b:bool) -> void:
    area.monitorable = b