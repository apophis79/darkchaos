extends Control

@onready var lblBonus = $VBoxContainer/lblBonus
@onready var ani = $AnimationPlayer

func _ready():
	for i in range(1, 9):
		MPF.server.add_event_handler("bonus_light%d_show" % i, self._on_event)

func _on_event(payload: Dictionary) -> void:
	var bonus_value = 500000
	var multiplier = MPF.game.player.bonus_multiplier
	lblBonus.text = str(multiplier) + " x " + str(bonus_value) + " = " + str(bonus_value * multiplier)
	ani.play("flash_bonus")
