extends Node2D

var VegetableScene = preload('res://vegetable/Vegetable.tscn')
var Vegetable = preload('res://vegetable/Vegetable.gd')


onready var main_menu = $Menus/MainMenu
onready var intro = $Menus/Intro
onready var settings = $Menus/Settings
onready var game_over = $Menus/GameOver

onready var play_screen = $PlayScreen
onready var hud = $PlayScreen/HUD
onready var player = $PlayScreen/Player

onready var spawn_start : Vector2 = $PlayScreen/VegetableSpawnTopLeft.position
onready var spawn_end : Vector2 = $PlayScreen/VegetableSpawnBottomRight.position

var max_vegetables = 20
var min_vegetable_distance_between = 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    randomize()

    PlayerStats.connect("no_health", self, "_on_player_no_health")

    play_screen.get_tree().paused = true
    hud.visible = false
    main_menu.visible = true


func _on_player_no_health() -> void:
    yield(player.die(), "completed")
    play_screen.get_tree().paused = true
    hud.visible = false
    game_over.reason.text = 'You died.'
    game_over.visible = true

func _on_Den_no_lives() -> void:
    play_screen.get_tree().paused = true
    hud.visible = false
    game_over.reason.text = 'Your children all died.'
    game_over.visible = true

func _on_VegetableSpawnTimer_timeout() -> void:
    var existing_vegetables = get_tree().get_nodes_in_group('vegetables')
    print('num vegetables: %d' % existing_vegetables.size())
    if existing_vegetables.size() > max_vegetables:
        return

    var new_vegetable = VegetableScene.instance()

    # Make this vegetable the rarest existing vegetable type.
    var vegetable_counts = {}

    for vegetable_type in Vegetable.VegetableType.values():
        vegetable_counts[vegetable_type] = 0

    for vegetable in existing_vegetables:
        vegetable_counts[vegetable.vegetable_type] += 1

    var rarest_vegetable
    var rarest_vegetable_count = max_vegetables

    for vegetable in vegetable_counts:
        if vegetable_counts[vegetable] < rarest_vegetable_count:
            rarest_vegetable_count = vegetable_counts[vegetable]
            rarest_vegetable = vegetable

    if !rarest_vegetable:
        rarest_vegetable = Vegetable.get_random_vegetable_type()

    new_vegetable.vegetable_type = rarest_vegetable

    while true:
        new_vegetable.position.x = rand_range(spawn_start.x, spawn_end.x)
        new_vegetable.position.y = rand_range(spawn_start.y, spawn_end.y)

        var reposition = false
        # Don't spawn vegetables too close together.
        for vegetable in existing_vegetables:
            var distance = (vegetable.position - new_vegetable.position).length()
            if distance < min_vegetable_distance_between:
                reposition = true
                break

        if !reposition:
            add_child(new_vegetable)
            break


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
