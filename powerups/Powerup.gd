extends Node2D


enum PowerupType {
    SpeedBoots
    Basket
    ExtraLife
    ExtraChildLife
}

export(PowerupType) var powerup_type

onready var sprite: AnimatedSprite = $AnimatedSprite
onready var area: Area2D = $Area2D

func _init() -> void:
    var possible_powerups = [PowerupType.SpeedBoots, PowerupType.Basket]

    if PlayerStats.health < 3:
        possible_powerups.append(PowerupType.ExtraLife)

    if PlayerStats.child_lives < 3:
        possible_powerups.append(PowerupType.ExtraChildLife)

    powerup_type = possible_powerups[rand_range(0, possible_powerups.size())]


func _ready() -> void:
    match powerup_type:
        PowerupType.SpeedBoots:
            sprite.animation = 'boot'
        PowerupType.Basket:
            sprite.animation = 'basket'
        PowerupType.ExtraLife:
            sprite.animation = 'life'
        PowerupType.ExtraChildLife:
            sprite.animation = 'child'

func set_pickupable(b:bool) -> void:
    area.monitorable = b
