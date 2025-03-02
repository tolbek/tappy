extends CharacterBody2D

const GRAVITY: float = 600.0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:

	velocity.y += GRAVITY * delta

	move_and_slide()
