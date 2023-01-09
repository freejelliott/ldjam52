extends Node

export(int) var max_health = 3
onready var health = max_health setget set_health

onready var score = 0 setget set_score
onready var powerup_boots = 0 setget set_powerup_boots
onready var powerup_baskets = 0 setget set_powerup_baskets

signal no_health
signal health_changed(value)

signal score_changed(value)

signal boots_changed(value)
signal baskets_changed(value)

func set_health(value) -> void:
    health = value
    emit_signal("health_changed", health)

    if health <= 0:
        emit_signal("no_health")

func reset() -> void:
    health = max_health
    score = 0
    powerup_boots = 0
    powerup_baskets = 0

func set_score(value):
    score = value
    emit_signal("score_changed", score)

# Tracking powerups

func set_powerup_boots(value):
    powerup_boots = value
    emit_signal("boots_changed", powerup_boots)

func set_powerup_baskets(value):
    powerup_baskets = value
    emit_signal("baskets_changed", powerup_baskets)
