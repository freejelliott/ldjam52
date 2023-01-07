extends Control

signal start_game
signal open_settings

func _on_PlayButton_pressed() -> void:
    emit_signal('start_game')


func _on_SettingsButton_pressed() -> void:
	emit_signal('open_settings')
