extends VideoStreamPlayer

@onready var shader_rect = $TextureRect
@onready var video_player = $VideoStreamPlayer

func _ready():
	shader_rect.material.set_shader_parameter("video_tex", video_player.get_video_texture())
	$VideoStreamPlayer.visible = false
	video_player.play()
