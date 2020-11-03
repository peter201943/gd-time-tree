extends KinematicBody2D




"""
FIXME (docs missing)

- title:  How to Make Juicy Camera Shake in Godot with OpenSimplexNoise
  url:    https://www.youtube.com/watch?v=i2A5diEmX6w
  code:   https://github.com/bramreth/godot_tutorial_content/blob/master/juicy_cam/juicy_camera.gd

- title:  How to switch scene using door (portal)? Godot 3 tutorial
  url:    https://www.youtube.com/watch?v=AxymjihpUi4
  code:   https://github.com/rfiedorowicz/godot_portal_tutorial/blob/master/scenes/Door.gd
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


"""
FIXME (docs missing)
"""
export(float, 0.000, 0.099) var zoom_in = 0.004
export(float, 0.000, 0.099) var zoom_out = 0.001
var zoom: Vector2 = Vector2(0,0)


"""
FIXME (docs missing)
"""
export (OpenSimplexNoise) var noise
export(float, 0, 1) var trauma = 0.0
export var max_x = 150
export var max_y = 150
export var max_r = 25
export var time_scale = 150
export(float, 0, 1) var decay = 0.6
var time = 0





func _ready():
	"""
	FIXME (docs missing)
	"""
	camera.make_current()
	zoom = camera.zoom




func add_trauma(trauma_in):
	trauma = clamp(trauma + trauma_in, 0, 1)




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
		camera.zoom -= Vector2(zoom_in, zoom_in)
		add_trauma(0.03)
	elif camera.zoom != zoom:
		camera.zoom += Vector2(zoom_out, zoom_out)
	
	time += delta
	var shake = pow(trauma, 2)
	camera.offset.x = noise.get_noise_3d(time * time_scale, 0, 0) * max_x * shake
	camera.offset.y = noise.get_noise_3d(0, time * time_scale, 0) * max_y * shake
	camera.rotation_degrees = noise.get_noise_3d(0, 0, time * time_scale) * max_r * shake
	if trauma > 0: trauma = clamp(trauma - (delta * decay), 0, 1)
	
	
	



