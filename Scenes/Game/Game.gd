extends Node2D

const PIPES = preload("res://Scenes/Pipes/Pipes.tscn")
var MAIN = load("res://Scenes/Main/Main.tscn")

@onready var pipes_holder: Node = $PipesHolder
@onready var upper_point: Marker2D = $UpperPoint
@onready var lower_point: Marker2D = $LowerPoint

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("Exit") and event.is_echo() == false:
		print("_unhandled_input:", event)
		get_tree().change_scene_to_packed(MAIN)



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn_pipes()

func spawn_pipes() -> void:
	var newpipes = PIPES.instantiate()
	var y_pos: float = randf_range(
		upper_point.position.y,
		lower_point.position.y,
	)
	newpipes.position = Vector2(
		upper_point.position.x,
		y_pos
	)
	pipes_holder.add_child(newpipes)


func _on_spawn_timer_timeout() -> void:
	spawn_pipes()


func _on_plane_died() -> void:
	get_tree().paused = true
