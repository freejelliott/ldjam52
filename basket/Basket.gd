extends Node2D

var Vegetable = preload('res://vegetable/Vegetable.gd')

var held_vegetable = null

export var speed = 10
export var follow_distance = 50

onready var sprite : AnimatedSprite = $Bob/VegetableSprite
onready var animation = $AnimationPlayer
onready var area = $Bob/Area2D

var follow_target: Node2D

func set_follow_target(target):
    follow_target = target

func _process(delta: float) -> void:
    match held_vegetable:
        Vegetable.VegetableType.Tomato:
            sprite.animation = 'Tomato'
        Vegetable.VegetableType.Potato:
            sprite.animation = 'Potato'
        Vegetable.VegetableType.Carrot:
            sprite.animation = 'Carrot'
        _:
            sprite.animation = 'None'

func _physics_process(delta: float) -> void:
    if follow_target:
        var velocity = follow_target.position - position

        var direction = velocity.normalized()

        if velocity.length() > follow_distance:
            position += (velocity - direction * follow_distance) * speed * delta

func destroy() -> void:
    follow_target = null
    area.set_deferred('monitorable', false)
    animation.play('destroy')
    yield(animation, "animation_finished")
    queue_free()
