extends Node2D

var Vegetable = preload('res://vegetable/Vegetable.tscn')


onready var main_menu = $Menus/MainMenu
onready var intro = $Menus/Intro
onready var settings = $Menus/Settings
onready var game_over = $Menus/GameOver

onready var play_screen = $PlayScreen
onready var hud = $PlayScreen/HUD
onready var audio_player = $AudioStreamPlayer

onready var spawn_start : Vector2 = $PlayScreen/VegetableSpawnTopLeft.position
onready var spawn_end : Vector2 = $PlayScreen/VegetableSpawnBottomRight.position

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    PlayerStats.connect("no_health", self, "_on_player_no_health")

    play_screen.get_tree().paused = true
    hud.visible = false
    main_menu.visible = true


func _on_player_no_health() -> void:
    play_screen.get_tree().paused = true
    hud.visible = false
    game_over.reason.text = 'You died.'
    game_over.visible = true
    #TODO: show the score

func _on_Den_no_lives() -> void:
    play_screen.get_tree().paused = true
    hud.visible = false
    game_over.reason.text = 'Your children all died.'
    game_over.visible = true
    #TODO: show the score

func _on_VegetableSpawnTimer_timeout() -> void:
    var new_vegetable = Vegetable.instance()

    new_vegetable.vegetable_type = new_vegetable.VegetableType.values()[rand_range(0, new_vegetable.VegetableType.size())]
    new_vegetable.position.x = rand_range(spawn_start.x, spawn_end.x)
    new_vegetable.position.y = rand_range(spawn_start.y, spawn_end.y)
    add_child(new_vegetable)


func _on_MainMenu_start_game() -> void:
    main_menu.visible = false
    intro.visible = true
    intro.start_intro()


func _on_Intro_intro_ended() -> void:
    intro.visible = false
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
    if game_over.visible or main_menu.visible or intro.visible:
        return
    settings.visible = true
    play_screen.get_tree().paused = true
    hud.visible = false


func _on_MainMenu_open_settings() -> void:
    settings.visible = true
    play_screen.get_tree().paused = true
    hud.visible = false

func _on_Settings_volume_changed(volume:float) -> void:
    AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), volume)
