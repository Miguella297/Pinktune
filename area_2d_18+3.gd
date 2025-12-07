extends Area2D 

# Path to the new scene you want to load
@export var target_scene_path : String = "res://bdeath5.tscn"

func _ready():
	# Connect the signal (if not already connected in the editor)
	connect("body_entered", _on_body_entered)

func _on_body_entered(body):
	# Check if the body is in your player (assuming its a Characterbody2D or a Kinematicbody2D)
	
	if body.is_in_group("player"):
		call_deferred("_fix")

func _fix():
	get_tree().change_scene_to_file(target_scene_path)
