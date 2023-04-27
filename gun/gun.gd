extends Sprite2D
@export var bullet: Resource
@export var rapid_fire:= false
var can_shoot = true
func _process(delta):
	if rapid_fire:
		if Input.is_action_just_pressed("fire"):
			shoot()
	else:
		if Input.is_action_pressed("fire"):
			shoot()
			
func shoot():
	if can_shoot:
		can_shoot = false
		$reload_timer.start()
		var bull = bullet.instantiate()
		
		bull.direction = Vector2.from_angle(global_rotation)
		bull.global_position = $launch_pos.global_position
		owner.add_child(bull)


func _on_reload_timer_timeout():
	can_shoot = true
