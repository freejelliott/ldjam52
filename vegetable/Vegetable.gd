extends Node2D

enum VegetableType {
    Tomato
    Carrot
    Potato
}

export(VegetableType) var vegetable_type = VegetableType.Tomato

onready var anim_sprite = $AnimatedSprite

func _ready() -> void:
    anim_sprite.animation = VegetableType.keys()[vegetable_type]