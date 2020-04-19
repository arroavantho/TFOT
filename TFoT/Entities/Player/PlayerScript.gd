extends KinematicBody2D

export(int) var gravity=1000 
export(int) var fall_speed=0
export(int) var player_speed=300
export(int) var jump_power= 500

func _physics_process(delta): 
	fall_speed += (gravity * delta)
	if is_on_floor():
		fall_speed = 0
		if Input.is_action_pressed("player_jump"):
			fall_speed = -jump_power
	var horizontal_input = Input.get_action_strength("player_right") - Input.get_action_strength("player_left")
	var horizontal_speed = horizontal_input * player_speed
	move_and_slide(Vector2(horizontal_speed,fall_speed),Vector2(0,-1),false,4,PI/4,false)

