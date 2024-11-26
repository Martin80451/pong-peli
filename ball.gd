extends CharacterBody2D

var area_entered = 0
var initial_pos
var speed = 300
func _ready():
	velocity = Vector2(-200, 200).normalized() * speed
	initial_pos = position

func _process(delta):
	var collision = move_and_collide(velocity * delta)
	if position.x > 1154 or position.x < 0:
		position = initial_pos
	if collision:
		velocity = velocity.bounce(collision.get_normal())

func _on_collision_detector_area_entered(area: Area2D):
	area_entered += 1
	print(area_entered)
