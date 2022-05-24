tool
extends EditorPlugin



func _enter_tree():
	add_custom_type("LieMeter",
					"TextureRect",
					preload("LieMeter.gd"),
					preload("assets/icons/factchecking.svg"))


func _exit_tree():
	remove_custom_type("LieMeter")
