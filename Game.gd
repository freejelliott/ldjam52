extends Node2D

var Vegetable = preload('res://vegetable/Vegetable.tscn')


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

var spawn_start : Vector2
var spawn_end : Vector2

onready var field = $Field

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    spawn_start.x = field.cell_size.x
    spawn_start.y = field.cell_size.y
    spawn_end.x = (field.width - 1) * field.cell_size.x
    spawn_end.y = (field.height - 1) * field.cell_size.y


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#    pass


func _physics_process(delta: float) -> void:
    #TODO: spawn enemies
    pass


func _on_VegetableSpawnTimer_timeout() -> void:
    var new_vegetable = Vegetable.instance()

    new_vegetable.vegetable_type = new_vegetable.VegetableType.values()[rand_range(0, new_vegetable.VegetableType.size())]
    new_vegetable.position.x = rand_range(spawn_start.x, spawn_end.x)
    new_vegetable.position.y = rand_range(spawn_start.y, spawn_end.y)
    add_child(new_vegetable)
