extends Node

func _ready():
	pass 

func _process(delta):
	$PlayerScoreLabel.text = str($Ball.player_score)
	$AIScoreLabel.text = str($Ball.ai_score)
	$CountdownLabel.text = str(int($Timer.time_left) + 1)
