extends Node

func _on_play_again_button_pressed():
	get_tree().change_scene_to_file("res://game_view.tscn")

func _on_quit_button_pressed():
	get_tree().change_scene_to_file("res://main.tscn")
