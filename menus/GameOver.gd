extends Control

onready var reason = $Reason

signal restart_game

func _on_RestartButton_pressed() -> void:
    emit_signal('restart_game')
