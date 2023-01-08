extends Node2D

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

func _ready() -> void:
    anim_sprite.animation = VegetableType.keys()[vegetable_type]

func set_follow_target(target):
    follow_target = target

func _physics_process(delta: float) -> void:
    if follow_target:
        var velocity = follow_target.position - position

        if velocity.length() > follow_distance:
            position += velocity * speed * delta
