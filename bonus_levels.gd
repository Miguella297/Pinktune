extends Node2D

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("bonuslevel.tscn")

func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("node_2d.tscn")

func _on_button_3_pressed() -> void:
	get_tree().change_scene_to_file("bonus2.tscn")


func _on_button_4_pressed() -> void:
	get_tree().change_scene_to_file("bonus3.tscn")

func _on_button_5_pressed() -> void:
	get_tree().change_scene_to_file("bonus4.tscn")


func _on_button_6_pressed() -> void:
	get_tree().change_scene_to_file("bonus5.tscn")
