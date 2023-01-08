extends Control

#var hearts = 3 setget set_hearts
#var max_hearts = 3 setget set_max_hearts
var scores = 0 setget set_scores
#var stats = PlayerStats
onready var label = $Label

# Called when the node enters the scene tree for the first time.

func set_scores(value):
    if label != null:
        label.text = "Score = " + str(PlayerStats.score)

func _ready():
    self.scores = PlayerStats.score
    PlayerStats.connect("score_changed", self, "set_scores")
#    self.max_hearts = PlayerStats.max_health
#    self.hearts = PlayerStats.health
#    PlayerStats.connect("health_changed", self, "set_hearts")

#func _onButton_pressed():
    #stats.score += 1;
    
#func set_hearts(value):
#    hearts = clamp(value, 0, max_hearts)
#    if progress != null:
#        progress.value = (hearts/float(max_hearts))*100
#
#func set_max_hearts(value):
#    max_hearts = max(value, 1)
#
## Called when the node enters the scene tree for the first time.
#func _ready():
#    self.max_hearts = PlayerStats.max_health
#    self.hearts = PlayerStats.health
#    PlayerStats.connect("health_changed", self, "set_hearts")
