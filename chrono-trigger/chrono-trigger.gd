extends Node




"""
Triggers the Chrono-Tree
"""




"""
Where we load the Chrono-Tree from
"""
export(PackedScene) var chrono_tree_ref


"""
Where we save to
"""
export(String, DIR) var saves_folder = "saves"


"""
How we unlock ourselves
WARN (context MUST have a boolean 'focus' variable; this lets the pause know it can be called)
"""
export(NodePath) var context_ref
onready var context = get_node(context_ref)


"""
How long a user needs to hold down the escape key before transitioning to the time-tree
"""
export(float, 0, 4) var confirm_period = 1.0


"""
How quickly the build-up-charge builds-up
"""
export(float, 0, 1) var add_rate = 0.3


"""
How quickly the build-up-charge drops
"""
export(float, 0, 1) var drop_rate = 0.2


"""
How long the user has held the escape key
"""
var held_period: float = 0.0





func _ready():
	"""
	Check the Context exists and has a Focus attribute
	"""
	assert(context != null, "ERROR: Chrono-Trigger has no assigned Context! Please assign one!!!")
	assert("focus" in context, "ERROR: No 'focus' attribute in Context! Check your context!")




func _process(_delta):

	"""
	Check if the user wants to exit
	From the correct context
	Also updates various timers
	"""

	if held_period > 0.0:
		"""Slowly lose charge"""
		held_period -= drop_rate

	if not context.focus:
		"""Do not proceed if the user is not using this"""
		return
	
	if Input.is_action_pressed("ui_page_up"):
		"""Slowly build up charge"""
		held_period += add_rate
	
	if held_period >= confirm_period:
		"""Escape to the Time Tree!"""
		pass # FIXME (imp missing)









