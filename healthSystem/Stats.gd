extends Node

export(int) var max_health = 3
onready var health = max_health setget set_health

onready var score = 0 setget set_score

signal no_health
signal health_changed(value)

signal score_changed(value)

func set_health(value) -> void:
    health = value
    emit_signal("health_changed", health)

    if health <= 0:
        emit_signal("no_health")

func reset() -> void:
    health = max_health
    score = 0

func set_score(value):
    score = value
    emit_signal("score_changed", score)
