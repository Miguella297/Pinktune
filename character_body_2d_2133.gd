extends CharacterBody2D

@export var speed: float = 100
@export var move_distance: float = 100
var direction: int = 1
var start_position_y: float

func _ready():
	start_position_y = position.y

func _physics_process(delta):
	# Calculate movement
	var motion = Vector2(0, speed * direction * delta)
	
	# Move the trampoline
	move_and_collide(motion)

	# Reverse direction if reaching limits
	if position.y > start_position_y + move_distance:
		position.y = start_position_y + move_distance
		direction = -1
	elif position.y < start_position_y:
		position.y = start_position_y
		direction = 1
