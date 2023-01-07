extends Control

signal restart_game

func _on_RestartButton_pressed() -> void:
    emit_signal('restart_game')
