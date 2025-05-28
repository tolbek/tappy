extends Control
const GAME = preload("res://Scenes/Game/Game.tscn")

@onready var high_score_label: Label = $MarginContainer/HighScoreLabel

# Called when the node enters the scene tree for the first time.
func _input(event: InputEvent) -> void:
	#if event is InputEventKey:
		#print(event)
	if event.is_action_pressed("jump") and event.is_echo() == false:
		print("_input:", event)
		get_tree().change_scene_to_packed(GAME)

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("jump") and event.is_echo() == false:
		GameManager.load_game_scene()

func _ready() -> void:
	get_tree().paused = false
	high_score_label.text = "%04d" % ScoreManager.high_score

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("jump") == true:
		print("Jump")
