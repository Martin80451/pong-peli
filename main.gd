extends Node2D


func _on_start_game_button_pressed():
	get_tree().change_scene_to_file("res://game_view.tscn")
