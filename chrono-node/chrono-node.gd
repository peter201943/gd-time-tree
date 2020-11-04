extends Area2D


"""
FIXME (docs missing)

- title:  How to switch scene using door (portal)? Godot 3 tutorial
  url:    https://www.youtube.com/watch?v=AxymjihpUi4
  code:   https://github.com/rfiedorowicz/godot_portal_tutorial/blob/master/scenes/Door.gd

- title:  How to load and change scenes
  url:    https://godotengine.org/qa/24773/how-to-load-and-change-scenes
"""


# export(PackedScene) var scene # NOTEME! This crashes the game! Very important to take a step to LOAD the scene!
export(String, FILE) var scene_file = "res://test/test.tscn"
onready var scene = load(scene_file)

export(float, 0, 2) var delay = 0.5
var current: float = 0.0


func _process(delta):
	
	if current > 0.0:
		current -= delta
	
	if Input.is_action_pressed("ui_page_down"):
		if get_overlapping_bodies().size() > 0:
			current += 2 * delta
	
	if current >= delay:
		current = 0.0
		var ERR = get_tree().change_scene_to(scene)
		if ERR != OK:
			push_error("could not load scene")



