extends Node

func _ready():
	pass 

func _process(delta):
	$CountdownLabel.text = str(int($Timer.time_left) + 1)
