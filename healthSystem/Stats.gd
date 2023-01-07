extends Node

export(int) var max_health = 3
onready var health = max_health setget set_health

signal no_health
signal health_changed(value)

func set_health(value):
    health = value
    emit_signal("health_changed", health)
    
    if health <= 0:
        emit_signal("no_health")

# Add to Player.gd when not used:
#var stats = PlayerStats

#Inside func_read():
    #Connect signal 
    #stats.connect("no_health", self, "queue_free")

#func _on_Hurtbox_area_entered(area):
    #stats.health -= 1
