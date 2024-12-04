extends CharacterBody2D

var area_entered: float = 0
var initial_pos
var ai_score = 0
var player_score = 0
var speed = 400
@onready var label = get_node("/root/Pong/CountdownLabel")
@onready var timer = get_node("/root/Pong/Timer")

func _ready():
	velocity = Vector2(-200, 200).normalized() * speed
	initial_pos = position

func _process(delta):
	#print(speed)
	var collision = move_and_collide(velocity * delta)
	if position.x > 1154:
		handle_ball("player")
	elif position.x < 0:
		handle_ball("ai")
	if collision:
		velocity = velocity.bounce(collision.get_normal())

func _on_collision_detector_area_entered(area: Area2D):
	area_entered += 1
	print(area_entered)
	if fmod(area_entered, 5) == 0:
		speed += 100
		velocity = Vector2(-200, 200).normalized() * speed
	
func stop_ball():
	velocity = Vector2.ZERO
	timer.start()
	
func handle_ball(type):
	match type:
		"player":
			player_score += 1
		"ai":
			ai_score += 1
	position = initial_pos
	label.visible = true
	speed = 400
	stop_ball()

func _on_timer_timeout():
	label.visible = false
	velocity = Vector2(-200, 200).normalized() * speed
