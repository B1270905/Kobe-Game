extends Node2D

const STICKEYMEATBALL = preload("res://Prefabs/Stickey_Meatball.tscn")
@onready var muzzle: Marker2D = $Marker2D
func _process(delta: float) -> void:
	look_at(get_global_mouse_position())
		
	rotation_degrees = wrap(rotation_degrees, 0, 360)
	if rotation_degrees > 90 and rotation_degrees < 270:
		scale.y = -1
	else:
		scale.y = 1
		
	if Input.is_action_just_pressed("Player_Shoot"):
		var STICKEYMEATBALL_instance = STICKEYMEATBALL.instantiate()
		get_tree().root.add_child(STICKEYMEATBALL_instance)
		STICKEYMEATBALL_instance.global_position = muzzle.global_position
		STICKEYMEATBALL_instance.rotation =rotation
		
	if Input.is_action_just_pressed("Speed_Shoot"):
		if $Timer.is_stopped():
			$Timer.start()
			var STICKEYMEATBALL_instance = STICKEYMEATBALL.instantiate()
			get_tree().root.add_child(STICKEYMEATBALL_instance)
			STICKEYMEATBALL_instance.global_position = muzzle.global_position
			STICKEYMEATBALL_instance.rotation =rotation
	
