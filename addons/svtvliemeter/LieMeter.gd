tool
extends TextureRect
# Control with liemeter


export(int, -1, 5) var lie_level = 0 setget set_lie_level

var textures = [preload("res://addons/svtvliemeter/assets/truth.png"),
				preload("res://addons/svtvliemeter/assets/almost-truth.png"),
				preload("res://addons/svtvliemeter/assets/half-truth.png"),
				preload("res://addons/svtvliemeter/assets/almost-lie.png"),
				preload("res://addons/svtvliemeter/assets/lie.png"),
				preload("res://addons/svtvliemeter/assets/complete-lie.png"),
				preload("res://addons/svtvliemeter/assets/mistake.png"),
				]


func _ready():
	texture = textures[lie_level]
	expand = true
	stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED


func set_lie_level(value):
	lie_level = value
	texture = textures[lie_level]
