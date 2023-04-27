extends Node2D
@export var mouse:= true
func _process(delta):
	if mouse:
		look_at(get_viewport().get_mouse_position())
	else:
		var dirvec:= Input.get_vector("aim_left", "aim_right", "aim_up", "aim_down")
		if dirvec!=Vector2.ZERO:
			look_at(global_position+dirvec)
