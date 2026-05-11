extends AnimatedSprite2D


func _ready() -> void:
	MPF.server.add_event_handler("health_norm", self._on_health_norm)
	MPF.server.add_event_handler("health_warm", self._on_health_warm)
	MPF.server.add_event_handler("health_crit", self._on_health_crit)
	
func _on_health_norm(payload: Dictionary) -> void:
	self.modulate = Color("00fefeff")
	
func _on_health_warm(payload: Dictionary) -> void:
	self.modulate = Color("f4d428ff")
	
func _on_health_crit(payload: Dictionary) -> void:
	self.modulate = Color("ff151cff")
