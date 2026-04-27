extends AnimatedSprite2D

@export var trigger_event: String = ""

signal finished_playing

func _ready() -> void:
	visible = false
	frame = 0

	if not animation_finished.is_connected(_on_finished):
		animation_finished.connect(_on_finished)


func play_queued(payload: Dictionary = {}) -> void:
	visible = true
	frame = 0
	play()


func _on_finished() -> void:
	visible = false
	stop()
	frame = 0
	finished_playing.emit()
