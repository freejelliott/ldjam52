extends Control

signal close_settings
signal open_settings
signal volume_changed(volume)

func _unhandled_input(event: InputEvent) -> void:
    if event.is_action_pressed('settings'):
        if visible:
            emit_signal('close_settings')
        else:
            emit_signal('open_settings')

func _on_CloseSettingsButton_pressed() -> void:
    emit_signal('close_settings')

func _on_VolumeSlider_value_changed(value:float) -> void:
	emit_signal('volume_changed', value)
