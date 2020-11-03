extends ConfirmationDialog




"""
Simple Dialog to Close the Game

- title:  Check if script of a node has variable
  url:    https://godotengine.org/qa/3099/check-if-script-of-a-node-has-variable

- title:  Throw exception or error?
  url:    https://godotengine.org/qa/54948/throw-exception-or-error
"""




"""
How we unlock ourselves
WARN (context MUST have a boolean 'focus' variable; this lets the pause know it can be called)
"""
export(NodePath) var context_ref
onready var context = get_node(context_ref)




func _ready():
	
	"""
	Connect to Our buttons
	Check that we are setup correctly
	"""
	
	# warning-ignore:return_value_discarded
	get_cancel().connect("pressed", self, "cancelled")
	# warning-ignore:return_value_discarded
	get_ok().connect("pressed", self, "accepted")
	
	assert(context != null, "ERROR: Pause has no assigned Context! Please assign one!!!")
	assert("focus" in context, "ERROR: No 'focus' attribute in Context! Check your context!")





func _process(_delta):

	"""
	Check if the user wants to exit
	From the correct context
	"""

	if not context.focus:
		return
	
	if Input.is_action_just_pressed("ui_cancel"):
		"""Exit the Game"""
		popup_centered()
		context.focus = false




func cancelled():
	"""Close this Menu"""
	self.hide()
	context.focus = true




func accepted():
	"""Exit the Game"""
	get_tree().quit()



