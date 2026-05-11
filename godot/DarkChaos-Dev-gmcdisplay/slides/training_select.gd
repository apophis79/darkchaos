extends Control

@onready var lblSelectTraining = $lblSelectTraining
@onready var lblSelection = $lblSelection
@onready var badgeHealth = $BadgeHealth
@onready var badgeHealthGrey = $BadgeHealthGrey
@onready var badgeCluster = $BadgeCluster
@onready var badgeClusterGrey = $BadgeClusterGrey
@onready var badgeProton = $BadgeProton
@onready var badgeProtonrey = $BadgeProtonGrey
@onready var badgeShipSave = $BadgeShipSave
@onready var badgeShipSaveGrey = $BadgeShipSaveGrey
@onready var badgeShields = $BadgeShields
@onready var badgeShieldsGrey = $BadgeShieldsGrey
@onready var badgeMoon = $BadgeMoon
@onready var badgeMoonGrey = $BadgeMoonGrey

@onready var selection1_completed = 0
@onready var selection2_completed = 0
@onready var selection3_completed = 0
@onready var selection4_completed = 0
@onready var selection5_completed = 0
@onready var selection6_completed = 0

func _ready() -> void:
	# completed events
	MPF.server.add_event_handler("show_heal_completed", self._on_selection1_completed)
	MPF.server.add_event_handler("show_cluster_bomb_completed", self._on_selection2_completed)
	MPF.server.add_event_handler("show_proton_cannon_completed", self._on_selection3_completed)
	MPF.server.add_event_handler("show_ship_save_completed", self._on_selection4_completed)
	MPF.server.add_event_handler("show_shields_completed", self._on_selection5_completed)
	MPF.server.add_event_handler("show_moon_missile_completed", self._on_selection6_completed)
	# selected events
	MPF.server.add_event_handler("heal_selected", self._on_selection1)
	MPF.server.add_event_handler("cluster_bomb_selected", self._on_selection2)
	MPF.server.add_event_handler("proton_cannon_selected", self._on_selection3)
	MPF.server.add_event_handler("ship_save_selected", self._on_selection4)
	MPF.server.add_event_handler("shields_selected", self._on_selection5)
	MPF.server.add_event_handler("moon_missile_selected", self._on_selection6)
	MPF.server.add_event_handler("skip_selected", self._on_selection7)
	# unselected events
	MPF.server.add_event_handler("heal_unselected", self._on_unselection1)
	MPF.server.add_event_handler("cluster_bomb_unselected", self._on_unselection2)
	MPF.server.add_event_handler("proton_cannon_unselected", self._on_unselection3)
	MPF.server.add_event_handler("ship_save_unselected", self._on_unselection4)
	MPF.server.add_event_handler("shields_unselected", self._on_unselection5)
	MPF.server.add_event_handler("moon_missile_unselected", self._on_unselection6)
	# initial selection
	lblSelection.text = "HEALTH"
	badgeHealth.visible = 1
	badgeHealth.scale = Vector2(1.1, 1.1)
	
	
func _on_selection1_completed(payload: Dictionary) -> void:
	selection1_completed = 1
	badgeHealth.visible = 1

func _on_selection2_completed(payload: Dictionary) -> void:
	selection2_completed = 1
	badgeCluster.visible = 1
	
func _on_selection3_completed(payload: Dictionary) -> void:
	selection3_completed = 1
	badgeProton.visible = 1
	
func _on_selection4_completed(payload: Dictionary) -> void:
	selection4_completed = 1
	badgeMoon.visible = 1
	
func _on_selection5_completed(payload: Dictionary) -> void:
	selection5_completed = 1
	badgeShipSave.visible = 1
	
func _on_selection6_completed(payload: Dictionary) -> void:
	selection6_completed = 1
	badgeShields.visible = 1
	
	
func _on_selection1(payload: Dictionary) -> void:
	lblSelection.text = "HEALTH"
	badgeHealth.visible = 1
	badgeHealth.scale = Vector2(1.1, 1.1)
	
func _on_unselection1(payload: Dictionary) -> void:
	badgeHealth.visible = selection1_completed
	badgeHealth.scale = Vector2(0.7, 0.7)
	
func _on_selection2(payload: Dictionary) -> void:
	lblSelection.text = "CLUSTER BOMBS"
	badgeCluster.visible = 1
	badgeCluster.scale = Vector2(1.1, 1.1)
	
func _on_unselection2(payload: Dictionary) -> void:
	badgeCluster.visible = selection2_completed
	badgeCluster.scale = Vector2(0.7, 0.7)
	
func _on_selection3(payload: Dictionary) -> void:
	lblSelection.text = "PROTON CANNON"
	badgeProton.visible = 1
	badgeProton.scale = Vector2(1.08, 1.08)
	
func _on_unselection3(payload: Dictionary) -> void:
	badgeProton.visible = selection3_completed
	badgeProton.scale = Vector2(0.67, 0.67)
	
func _on_selection4(payload: Dictionary) -> void:
	lblSelection.text = "SHIP SAVER"
	badgeShipSave.visible = 1
	badgeShipSave.scale = Vector2(1.1, 1.1)
	
func _on_unselection4(payload: Dictionary) -> void:
	badgeShipSave.visible = selection4_completed
	badgeShipSave.scale = Vector2(0.7, 0.7)
	
func _on_selection5(payload: Dictionary) -> void:
	lblSelection.text = "SHIELDS"
	badgeShields.visible = 1
	badgeShields.scale = Vector2(1.1, 1.1)
	
func _on_unselection5(payload: Dictionary) -> void:
	badgeShields.visible = selection5_completed
	badgeShields.scale = Vector2(0.7, 0.7)
	
func _on_selection6(payload: Dictionary) -> void:
	lblSelection.text = "MOON MISSILES"
	badgeMoon.visible = 1
	badgeMoon.scale = Vector2(1.1, 1.1)
	
func _on_unselection6(payload: Dictionary) -> void:
	badgeMoon.visible = selection6_completed
	badgeMoon.scale = Vector2(0.7, 0.7)

func _on_selection7(payload: Dictionary) -> void:
	lblSelection.text = "SKIP TRAINING"
