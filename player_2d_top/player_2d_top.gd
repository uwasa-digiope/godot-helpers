extends CharacterBody2D
var direction:= Vector2.ZERO

@export var speed = 200
func _physics_process(delta):
	direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction*speed
	move_and_slide()
