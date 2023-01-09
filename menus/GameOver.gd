extends Control

onready var reason = $Reason
onready var score = $Score

signal restart_game

func _process(delta: float) -> void:
    score.text = "Score: %d" % PlayerStats.score

func _on_RestartButton_pressed() -> void:
    emit_signal('restart_game')