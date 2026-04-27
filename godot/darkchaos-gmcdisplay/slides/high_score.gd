extends Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	MPF.server.add_event_handler("submit_high_score_initials", self._on_event)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_event(payload: Dictionary) -> void:
	MPF.server.send_event("text_input_high_score_complete&text=%s" % [MPF.game.machine_vars["high_score_initials"]])
	
