extends StaticBody2D

@export var speed = 100
@export var distance = 100
var direction = 1
var start_position_y = 0

func _ready():
	start_position_y = position.y

func _physics_process(delta):
	# Move up and down
	position.y += speed * direction * delta

	if position.y > start_position_y + distance:
		position.y = start_position_y + distance
		direction = -1
	elif position.y < start_position_y:
		position.y = start_position_y
		direction = 1
