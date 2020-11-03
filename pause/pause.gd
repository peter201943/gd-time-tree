extends ConfirmationDialog

"""
Simple Dialog to Close the Game
"""

signal cancelled


func _ready():
	get_cancel().connect("pressed", self, "cancelled")
	get_ok().connect("pressed", self, "accepted")


func cancelled():
	"""Close this Menu"""
	self.hide()
	emit_signal("cancelled")


func accepted():
	"""Exit the Game"""
	get_tree().quit()
