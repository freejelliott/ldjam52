extends Control

signal intro_ended


onready var animation: AnimationPlayer = $AnimationPlayer

func start_intro() -> void:
    print('starting intro')
    animation.play('text_scroll')
    animation.queue('continue')


func _on_Panel_gui_input(event:InputEvent) -> void:
    if event.is_action_pressed('click'):
        if animation.current_animation == 'text_scroll':
            animation.seek(animation.current_animation_length)
        else:
            emit_signal('intro_ended')
