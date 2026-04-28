extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	MPF.server.add_event_handler("play_shields_up", self._show_sheilds)
	MPF.server.add_event_handler("play_shields_down", self._hide_sheilds)
	self.visible = false
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _show_sheilds(payload: Dictionary) -> void:
	self.visible = true
	
func _hide_sheilds(payload: Dictionary) -> void:
	self.visible = false
