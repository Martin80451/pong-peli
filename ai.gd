extends CharacterBody2D


var speed = 300
var ball 

func _ready():
	ball = get_parent().get_node("Ball")

func _physics_process(delta: float):
	velocity = Vector2(0, get_ai_direction()) * speed
	move_and_slide()
	
func get_ai_direction():
	if abs(ball.position.y - position.y) > 20:
		if ball.position.y > position.y: return 1
		else: return -1
	else: return 0
