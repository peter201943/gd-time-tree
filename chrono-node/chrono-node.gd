extends Area2D

"""
FIXME (docs missing)

- title:  How to switch scene using door (portal)? Godot 3 tutorial
  url:    https://www.youtube.com/watch?v=AxymjihpUi4
  code:   https://github.com/rfiedorowicz/godot_portal_tutorial/blob/master/scenes/Door.gd
"""


export(PackedScene) var scene
export(float, 0, 2) var delay = 0.5
var current: float = 0.0


func _process(delta):
	if current > 0.0:
		current -= delta
	if Input.is_action_pressed("ui_page_down"):
		if get_overlapping_bodies().size() > 0:
			current += 2 * delta
			if current >= delay:
				var ERR = get_tree().change_scene_to(scene)
				if ERR != OK:
					push_error("could not load scene")

