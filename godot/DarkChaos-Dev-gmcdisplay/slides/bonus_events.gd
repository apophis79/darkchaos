extends Control

@onready var lblBonus = $VBoxContainer/lblBonus
@onready var lblBonusValue = $VBoxContainer/lblBonusValue
@onready var ani = $AnimationPlayer


func _ready():
	MPF.server.add_event_handler("bonus_tally1", self._on_tally1)
	MPF.server.add_event_handler("bonus_tally2", self._on_tally2)
	MPF.server.add_event_handler("bonus_tally3", self._on_tally3)
	MPF.server.add_event_handler("bonus_tally4", self._on_tally4)
	MPF.server.add_event_handler("bonus_tally5", self._on_tally5)
	MPF.server.add_event_handler("bonus_tally6", self._on_tally6)


func _on_tally1(payload: Dictionary) -> void:
	var bonus_value = MPF.game.player.bonus_waves
	var multiplier = MPF.game.player.bonus_multiplier
	lblBonus.text = "WAVES"
	if multiplier > 1:
		lblBonus.text = str(multiplier) + " x " + str(bonus_value) + " = " + str(bonus_value * multiplier)
	else:
		lblBonusValue.text = str(bonus_value)
	ani.play("flash_bonus")
	
	
func _on_tally2(payload: Dictionary) -> void:
	var bonus_value = MPF.game.player.bonus_training
	var multiplier = MPF.game.player.bonus_multiplier
	lblBonus.text = "TRAINING"
	if multiplier > 1:
		lblBonusValue.text = str(multiplier) + " x " + str(bonus_value) + " = " + str(bonus_value * multiplier)
	else:
		lblBonusValue.text = str(bonus_value)
	ani.play("flash_bonus")
	
	
func _on_tally3(payload: Dictionary) -> void:
	var bonus_value = MPF.game.player.bonus_bombs
	var multiplier = MPF.game.player.bonus_multiplier
	lblBonus.text = "CLUSTER BOMBS"
	if multiplier > 1:
		lblBonusValue.text = str(multiplier) + " x " + str(bonus_value) + " = " + str(bonus_value * multiplier)
	else:
		lblBonusValue.text = str(bonus_value)
	ani.play("flash_bonus")
	
	
func _on_tally4(payload: Dictionary) -> void:
	var bonus_value = MPF.game.player.bonus_missiles
	var multiplier = MPF.game.player.bonus_multiplier
	lblBonus.text = "MOON MISSILES"
	if multiplier > 1:
		lblBonusValue.text = str(multiplier) + " x " + str(bonus_value) + " = " + str(bonus_value * multiplier)
	else:
		lblBonusValue.text = str(bonus_value)
	ani.play("flash_bonus")


func _on_tally5(payload: Dictionary) -> void:
	var bonus_value = MPF.game.player.bonus_protons
	var multiplier = MPF.game.player.bonus_multiplier
	lblBonus.text = "PROTON ROUNDS"
	if multiplier > 1:
		lblBonusValue.text = str(multiplier) + " x " + str(bonus_value) + " = " + str(bonus_value * multiplier)
	else:
		lblBonusValue.text = str(bonus_value)
	ani.play("flash_bonus")
	
	
func _on_tally6(payload: Dictionary) -> void:
	var bonus_value = MPF.game.player.bonus_total
	lblBonus.text = "BONUS TOTAL"
	lblBonusValue.text = str(bonus_value)
