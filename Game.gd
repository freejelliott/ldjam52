extends Node2D

var Vegetable = preload('res://vegetable/Vegetable.tscn')

var spawn_start : Vector2
var spawn_end : Vector2

onready var main_menu = $Menus/MainMenu
onready var settings = $Menus/Settings
onready var game_over = $Menus/GameOver

onready var play_screen = $PlayScreen
onready var field = $PlayScreen/Field
onready var hud = $PlayScreen/HUD

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    spawn_start.x = field.cell_size.x
    spawn_start.y = field.cell_size.y
    spawn_end.x = (field.width - 1) * field.cell_size.x
    spawn_end.y = (field.height - 1) * field.cell_size.y

    PlayerStats.connect("no_health", self, "end_game")

    play_screen.get_tree().paused = true
    hud.visible = false
    main_menu.visible = true

func _physics_process(delta: float) -> void:
    #TODO: spawn enemies
    pass

func end_game() -> void:
    play_screen.get_tree().paused = true
    hud.visible = false
    game_over.visible = true
    #TODO: show the reason for game over and the score


func _on_VegetableSpawnTimer_timeout() -> void:
    var new_vegetable = Vegetable.instance()

    new_vegetable.vegetable_type = new_vegetable.VegetableType.values()[rand_range(0, new_vegetable.VegetableType.size())]
    new_vegetable.position.x = rand_range(spawn_start.x, spawn_end.x)
    new_vegetable.position.y = rand_range(spawn_start.y, spawn_end.y)
    add_child(new_vegetable)


func _on_MainMenu_start_game() -> void:
    print('start game')
    main_menu.visible = false
    play_screen.get_tree().paused = false
    hud.visible = true


func _on_GameOver_restart_game() -> void:
    get_tree().reload_current_scene()
    PlayerStats.reset()


func _on_Settings_close_settings() -> void:
    settings.visible = false
    if !main_menu.visible:
        play_screen.get_tree().paused = false
        hud.visible = true


func _on_Settings_open_settings() -> void:
    if game_over.visible or main_menu.visible:
        return
    settings.visible = true
    play_screen.get_tree().paused = true
    hud.visible = false


func _on_MainMenu_open_settings() -> void:
    settings.visible = true
    play_screen.get_tree().paused = true
    hud.visible = false
