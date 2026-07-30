class_name HandAnchor

extends Node2D

@export var deafualt_direcrion = Vector2.RIGHT

func _process(delta: float) -> void:
	var cursor_position = get_global_mouse_position()
	
	var rotation_angle = global_position.angle_to_point(cursor_position)
	rotation = rotation_angle	
