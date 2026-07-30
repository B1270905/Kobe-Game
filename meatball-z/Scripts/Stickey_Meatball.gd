extends CharacterBody2D

@export var speed: float = 500.0
var is_stuck: bool = false

	
	

func _physics_process(delta: float) -> void:
	if not is_stuck:
		# transform.x is the local "forward" direction of the bullet
		var direction = transform.x
		
		# Move using the global direction
		var collision = move_and_collide(direction * speed * delta)
		
		if collision:
			is_stuck = true
			global_position = collision.get_position()
			
			# Enable collision so the player can stand on it
			set_collision_layer_value(1, true)
			set_collision_mask_value(1, true)
			
func _process(delta):
	if Input.is_action_just_pressed("Restart"):
		queue_free()
		
