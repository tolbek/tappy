extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= delta * 120.0
	check_off_screen()

# for mac users
func check_off_screen() -> void:
	if position.x < -500:
		queue_free()


func _on_screen_exited() -> void:
	queue_free()
