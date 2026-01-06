
extends Node

@onready var video_player = $VideoStreamPlayer

const intro = preload("res://resources/attract.ogv")
const bg_loop = preload("res://resources/bg-loop-attract.ogv")

func _ready():
	video_player.stream = intro
	video_player.play()
	video_player.loop = false
	video_player.finished.connect(_on_video_finished)

func _on_video_finished():
	video_player.stream = bg_loop
	video_player.loop = true
	video_player.play()
