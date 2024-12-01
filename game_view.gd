extends Node

func _ready():
	pass 

func _process(delta):
	$PlayerScoreLabel.text = str($Ball.player_score)
	$AIScoreLabel.text = str($Ball.ai_score)
	$CountdownLabel.text = str(int($Timer.time_left) + 1)
	if $Ball.player_score == 7:
		get_tree().change_scene_to_file("res://game_won.tscn")
	elif $Ball.ai_score == 7:
		get_tree().change_scene_to_file("res://game_lost.tscn")
