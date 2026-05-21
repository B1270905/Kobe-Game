extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("Player_Right"):
		position.x += 5
	if Input.is_action_pressed("Player_Left"):
		position.x -= 5
	
