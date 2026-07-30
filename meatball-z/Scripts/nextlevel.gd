extends Area2D
signal Die_Meatball
# Allows you to select the next level file directly from the inspector
@export_file("*.tscn") var next_scene: String


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("player"):
		get_tree().change_scene_to_file("res://Levels/Level_2.tscn")
		
			
			
