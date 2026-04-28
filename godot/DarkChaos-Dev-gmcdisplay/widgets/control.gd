extends Control

@onready var shader_rect = $TextureRect
@onready var video_player = $VideoStreamPlayer

func _ready():
	var tex = video_player.get_video_texture()
	shader_rect.material.set_shader_parameter("video_tex", tex)
	video_player.visible = false
	video_player.play()
