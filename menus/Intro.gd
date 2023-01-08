extends Control

signal intro_ended


onready var animation: AnimationPlayer = $AnimationPlayer

func start_intro() -> void:
    print('starting intro')
    animation.play('text_scroll')


func _on_Panel_gui_input(event:InputEvent) -> void:
    if event.is_action_pressed('click'):
        if animation.is_playing():
            animation.seek(animation.current_animation_length)
        else:
            emit_signal('intro_ended')
