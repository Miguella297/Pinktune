extends Area2D

#Path to the new scene you want to load
@export var target_scene_path: String = "res://level5-6.tscn"

func _ready():
	# connect the signal (if not already connected to the editor)
	connect("body_entered", _on_body_entered)
	
func _on_body_entered(body):
	#check if the body is in your player (assuming it's a Kinematicbody2D or a Characterbody2D)
	
	if body.is_in_group("player"):
		call_deferred("_fix")

func _fix():
	get_tree().change_scene_to_file(target_scene_path)
