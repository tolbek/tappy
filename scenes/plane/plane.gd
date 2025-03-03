extends CharacterBody2D

const GRAVITY: float = 1000.0
const POWER: float = -350.0

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:

	velocity.y += GRAVITY * delta

	fly()

	move_and_slide()
	
	if is_on_floor() == true:
		die()
	
func fly() -> void:
	if Input.is_action_just_pressed("fly") == true:
		velocity.y = POWER

func die () -> void:
	animated_sprite_2d.stop()
	set_physics_process(false)
