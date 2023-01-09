extends Node2D


enum PowerupType {
    SpeedBoots
    Basket
    ExtraLife
    ExtraChildLife
}

export(PowerupType) var powerup_type

onready var sprite: Sprite = $Sprite
onready var area: Area2D = $Area2D

func _init() -> void:
    # if health and lives max, only SpeedBoots and Basket available
    if PlayerStats.health == 3 && PlayerStats.child_lives == 3:
        powerup_type = PowerupType.values()[rand_range(0, PowerupType.size())-2]
    # if health and lives less than max, all Powerups available
    #elif PlayerStats.health < 3 && PlayerStats.child_lives < 3:
        #powerup_type = PowerupType.values()[rand_range(0, PowerupType.size())]
    
    # if health is max, and child lives is low, all Powerups available except life
    elif PlayerStats.health == 3 && PlayerStats.child_lives < 3:
        # not working
        powerup_type = PowerupType.values().remove(2)
        powerup_type = PowerupType.values()[rand_range(0, PowerupType.size())]
    
    # if health is less than max, and child is max, all Powerups available except child lives
    elif PlayerStats.health < 3 && PlayerStats.child_lives == 3:
        powerup_type = PowerupType.values()[rand_range(0, PowerupType.size())-1]
        
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
        PowerupType.ExtraChildLife:
            sprite.modulate = Color.lightblue

func set_pickupable(b:bool) -> void:
    area.monitorable = b
