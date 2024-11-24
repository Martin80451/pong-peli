extends CharacterBody2D

var speed = 50
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	velocity = Vector2(-200, 200).normalized() * speed


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity * velocity.bounce(collision.get_normal())
