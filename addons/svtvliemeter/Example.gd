extends Control




onready var liemeter = $LieMeter
onready var lielevel = $Controls/LieLevel
onready var selector = $Controls/LieLevelSelector


func _on_LieLevelSelector_value_changed(value):
	liemeter.lie_level = value
	lielevel.text = str(value)


func _on_IsDelusion_toggled(button_pressed):
	if button_pressed:
		liemeter.lie_level = -1
		selector.editable = false
		lielevel.text = str(-1)
	else:
		liemeter.lie_level = selector.value
		selector.editable = true
		lielevel.text = str(selector.value)
