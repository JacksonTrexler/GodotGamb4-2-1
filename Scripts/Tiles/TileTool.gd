@tool
extends TileMap

func _process(delta):
	if Engine.is_editor_hint():
		for child in get_children():
			if child.has_method("update_position"):
				child.update_position(self)
