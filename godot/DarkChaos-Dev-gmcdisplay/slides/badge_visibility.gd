extends Sprite2D

@export var show_event: String = ""
@export var hide_event: String = ""

func _ready() -> void:
	self.visible = false
	if show_event != "":
		MPF.server.add_event_handler(show_event, self._on_badge_show)
	if hide_event != "":
		MPF.server.add_event_handler(hide_event, self._on_badge_hide)

func _on_badge_show(payload: Dictionary) -> void:
	self.visible = true

func _on_badge_hide(payload: Dictionary) -> void:
	self.visible = false 
