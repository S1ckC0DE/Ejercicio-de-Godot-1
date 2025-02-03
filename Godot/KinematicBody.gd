extends KinematicBody

export var speed = 25

export var fall_acceleration= 75

var velocity = Vector3.ZERO


func _physics_process(delta):
	var direction= Vector3.ZERO
	if Input.is_action_pressed("ui_right"):
		direction.x +=1
	if Input.is_action_pressed("ui_left"):
		direction.x -=1
	if Input.is_action_pressed("ui_up"):
		direction.y +=1
	if Input.is_action_just_pressed("ui_down"):
		direction.y -=1
		
	velocity.x= direction.x * speed
	velocity.z= direction.x * speed
	
	velocity.y= direction.x * speed
	velocity = move_and_slide(velocity, Vector3.UP)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
