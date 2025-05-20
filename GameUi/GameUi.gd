extends Control

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("Exit") and event.is_echo() == false:
		GameManager.load_game_scene()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
