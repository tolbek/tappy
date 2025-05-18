extends Node2D

const SPEED: float = 120.0
const OFF_SCREEN: float = 100.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= SPEED * delta
	
	if position.x < get_viewport_rect().position.x - 100.0:
		die()

func die() -> void:
	print("on_screen_exited")
	set_process(false)
	queue_free()


func _on_screen_exited() -> void:
	die()


func _on_pipe_body_entered(body: Node2D) -> void:
	if body is Tappy:
		body.die()
