extends Control

var animation_queue: Array[Dictionary] = []
var is_playing: bool = false

var animations_by_event: Dictionary = {}

@warning_ignore("shadowed_global_identifier")
var log: GMCLogger

func _enter_tree() -> void:
	self.log = preload("res://addons/mpf-gmc/scripts/log.gd").new("AnimatedOverlayQueue")

func _ready() -> void:
	_register_child_animations()

func _register_child_animations() -> void:
	for child in get_children():
		if child is AnimatedSprite2D:
			if child.trigger_event != "":
				animations_by_event[child.trigger_event] = child
				self.log.info("Adding Event Handler for Animation Overlay %s" % child.trigger_event)
				MPF.server.add_event_handler(child.trigger_event, _queue_animation)

func _queue_animation(payload: Dictionary) -> void:
	var event_name := ""
	self.log.info("Received trigger, finding event name")
	if payload.has("name"):
		event_name = payload["name"]

	self.log.info("Event name resolved to: %s" % event_name)

	if event_name == "":
		push_warning("Queued animation event received, but payload had no event/name field.")
		return

	if not animations_by_event.has(event_name):
		push_warning("No animation registered for event: " + event_name)
		return

	animation_queue.append({
		"sprite": animations_by_event[event_name],
		"payload": payload
	})

	if not is_playing:
		_play_next_animation()


func _play_next_animation() -> void:
	if animation_queue.is_empty():
		is_playing = false
		return

	is_playing = true
	self.log.info("Playing Animation")

	var item: Dictionary = animation_queue.pop_front()
	var sprite = item["sprite"]
	var payload: Dictionary = item["payload"]

	sprite.play_queued(payload)
	await sprite.finished_playing

	_play_next_animation()
