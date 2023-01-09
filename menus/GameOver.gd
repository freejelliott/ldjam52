extends Control

onready var you_died_image = $YouDiedImage
onready var child_died_image = $ChildDiedImage
onready var score = $Score

var reason

signal restart_game

func _process(delta: float) -> void:
    score.text = "Score: %d" % PlayerStats.score
    match reason:
        'child':
            you_died_image.visible = false
            child_died_image.visible = true
        'died':
            you_died_image.visible = true
            child_died_image.visible = false


func _on_RestartButton_pressed() -> void:
    emit_signal('restart_game')