extends CharacterBody2D

var areaEntered = 0
var speed = 120
func _ready():
	velocity = Vector2(-200, 200).normalized() * speed

func _process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())



func _on_collision_detector_area_entered(area: Area2D):
	areaEntered += 1
	print(areaEntered)
