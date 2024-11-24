extends CharacterBody2D

var area_entered = 0
var speed = 300
func _ready():
	velocity = Vector2(-200, 200).normalized() * speed
	#print(position)

func _process(delta):
	var collision = move_and_collide(velocity * delta)
	# Above code keeps ball going forever for some reason
	if collision:
		velocity = velocity.bounce(collision.get_normal())

func _on_collision_detector_area_entered(area: Area2D):
	area_entered += 1
	print(area_entered)
