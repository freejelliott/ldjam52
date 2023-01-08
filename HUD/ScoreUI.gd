extends Control

var scores = 0 setget set_scores
onready var label = $Label
onready var star_animation : AnimationPlayer = $StarPath/PathFollow2D/AnimationPlayer

func set_scores(value):
    if label != null:
        if value > 0:
            star_animation.play('star')
            yield(star_animation, "animation_finished")
        label.text = "Score = " + str(PlayerStats.score)

func _ready():
    self.scores = PlayerStats.score
    PlayerStats.connect("score_changed", self, "set_scores")
