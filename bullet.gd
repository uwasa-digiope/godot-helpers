extends Area2D
@export var speed:= 500
var direction = Vector2.ZERO

func _ready():
	look_at(global_position+direction)

func _physics_process(delta):
	global_position+=direction*speed*delta
