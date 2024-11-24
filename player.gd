extends CharacterBody2D

var speed = 10

func _physics_process(_delta):
	velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		velocity.y -=1
	if Input.is_action_pressed("ui_down"):
		velocity.y +=1
	move_and_collide(velocity * speed)
