extends KinematicBody2D




"""
FIXME (docs missing)
"""




"""
FIXME (docs missing)
"""
export(int, 0, 5000) var speed: int = 1000


"""
FIXME (docs missing)
"""
export(NodePath) var map_ref = "world"
onready var map_size = get_node(map_ref).get_size()


"""
FIXME (docs missing)
"""
export(NodePath) var camera_ref = "camera"
onready var camera: Camera2D = get_node(camera_ref)


"""
FIXME (docs missing)
"""
var focus = true




func _ready():
	"""
	FIXME (docs missing)
	"""
	camera.make_current()




func _process(delta):
	"""
	FIXME (docs missing)
	"""
	
	var velocity = Vector2()
	
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	velocity = velocity.normalized() * speed
	
	position += velocity * delta
	position.x = clamp(position.x, 0, map_size.x)
	position.y = clamp(position.y, 0, map_size.y)
	
	if Input.is_action_pressed("ui_page_down"):
		print("ZOOM")
	
	
	



