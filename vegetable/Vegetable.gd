extends Node2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

enum VegetableType {
    Tomato
    Carrot
    Potato
}


export var speed = 4
export var follow_distance = 100
export(VegetableType) var vegetable_type = VegetableType.Tomato

onready var anim_sprite = $AnimatedSprite

var follow_target: Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    anim_sprite.animation = VegetableType.keys()[vegetable_type]

func set_follow_target(target):
    follow_target = target


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#    pass


func _physics_process(delta: float) -> void:
    if follow_target:
        var velocity = follow_target.position - position

        if velocity.length() > follow_distance:
            position += velocity * speed * delta