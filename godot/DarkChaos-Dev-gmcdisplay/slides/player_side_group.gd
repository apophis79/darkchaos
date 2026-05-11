extends Control

@export var show_event: String = ""

func _ready() -> void:
	MPF.server.add_event_handler("game_started", self._on_player_hide)
	if show_event != "":
		MPF.server.add_event_handler(show_event, self._on_player_show)
	
		
func _on_player_show(payload: Dictionary) -> void:
	self.visible = true

func _on_player_hide(payload: Dictionary) -> void:
	self.visible = false
	
