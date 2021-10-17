extends KinematicBody2D

var jumpvelocity = 150.0
var gravityscale = 200.0
var walkspeed = 350
var velocity = Vector2()

func _ready():
	pass

func get_input():
	if Input.is_action_pressed("ui_left"):
		velocity.x = -walkspeed
	elif Input.is_action_pressed("ui_right"):
		velocity.x = walkspeed
	else:
		velocity.x = 0
	
#	if Input.is_action_pressed("ui_up"):
#		velocity.y-=jumpvelocity

func _physics_process(delta):
	get_input()
	velocity.y = gravityscale
	move_and_slide(velocity)
