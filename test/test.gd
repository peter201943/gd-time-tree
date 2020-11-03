extends Spatial



"""
Simple Mover of objects to show a game state
- IS supposed to be as naive as possible about the outside world and assumes absolutely nothing
- does not handle saving
- does not handle reporting
- does handle requests to exit
"""





"""
The 'Player 1' Representation
"""
export(NodePath) var ball_0_ref = "ball-0"
onready var ball_0 = get_node(ball_0_ref)

"""
The 'Player 2' Representation
"""
export(NodePath) var ball_1_ref = "ball-1"
onready var ball_1 = get_node(ball_1_ref)

"""
Who's turn it is
Defaults to Player 1
"""
export(NodePath) var turn_ref = "ball-0"
onready var turn = get_node(turn_ref)


"""
WARN (minor kludge)
Allows player to think before exiting
"""
export(PackedScene) var pause_scene
onready var pause: ConfirmationDialog = pause_scene.instance()
var focus: bool = true





func _ready():
	# warning-ignore:return_value_discarded
	pause.connect("cancelled", self, "_menu_return")
	get_node("camera").add_child(pause)







func _process(_delta):
	
	"""
	Allow player to change position of players
	"""
	
	if not focus:
		"""We are in a menu"""
		return
	
	if Input.is_action_just_pressed("ui_right"):
		"""Move Right"""
		turn.translate(Vector3(2,0,0))
		_turn()
		
	if Input.is_action_just_pressed("ui_left"):
		"""Move Left"""
		turn.translate(Vector3(-2,0,0))
		_turn()
		
	if Input.is_action_just_pressed("ui_up"):
		"""Move Up"""
		turn.translate(Vector3(0,0,-2))
		_turn()
		
	if Input.is_action_just_pressed("ui_down"):
		"""Move Down"""
		turn.translate(Vector3(0,0,2))
		_turn()
		
	if Input.is_action_pressed("ui_page_up"):
		"""Escape to the Time Tree"""
		print("up")
		
	if Input.is_action_just_pressed("ui_cancel"):
		"""Exit the Game"""
		pause.popup_centered()
		self.focus = false








func _turn():
	
	"""
	Change who is in control
	"""
	
	if turn == ball_0:
		turn = ball_1
		return
	
	if turn == ball_1:
		turn = ball_0
		return




func _menu_return():
	focus = true









