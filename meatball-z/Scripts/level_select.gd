extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Level_1.tscn")


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Level_2.tscn")

func _on_button_3_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Level_3.tscn")


func _on_button_4_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Level_4.tscn")


func _on_button_5_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Level_5.tscn")


func _on_button_6_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Level_6.tscn")


func _on_button_7_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Level_7.tscn")


func _on_button_8_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Level_8.tscn")


func _on_button_9_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Level_9.tscn")


func _on_button_10_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Level_10.tscn")
