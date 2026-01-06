extends PopupMenu

const CONFIG_FILE = "user://settings.cfg"

var mpf_window

var position_dialog: AcceptDialog
var pos_x: SpinBox
var pos_y: SpinBox
var pos_display: String

const MPF_DISPLAY_SCRIPT := preload("res://addons/mpf-gmc/classes/mpf_display.gd")

func _ready():

	mpf_window = get_tree().current_scene

	_build_position_dialog()

	for mpf_display in mpf_window.displays:
		self.add_display_menu(mpf_display)

	self.add_item("Exit", 0)

func add_display_menu(display):
	var display_menu = PopupMenu.new()
	display_menu.name = display
	self.add_child(display_menu)
	self.add_submenu_item(display, display)

	var submenu = PopupMenu.new()
	submenu.name = "resolution_submenu"

	submenu.add_item("640 x 360", 0)
	submenu.add_item("854 x 480", 1)
	submenu.add_item("1280 x 720", 2)
	submenu.add_item("1600 x 900", 3)
	submenu.add_item("1920 x 1080", 4)
	submenu.add_item("2560 x 1440", 5)
	submenu.add_item("3840 x 2160", 6)
	submenu.connect("id_pressed", Callable(self, "_on_resolution_selected").bind(display))
	display_menu.add_child(submenu, 1)
	display_menu.add_submenu_item("Window Resolution", "resolution_submenu")

	self.connect("id_pressed", Callable(self, "_on_self_item_pressed"))

	display_menu.add_check_item("Toggle Borderless Window", 3)
	display_menu.add_check_item("Toggle Always On Top", 4)
	display_menu.add_item("Set Position…", 5)
	display_menu.connect("id_pressed", Callable(self, "_on_submenu_item_pressed").bind(display, display_menu))

	# Optional: keep menu open when toggling
	display_menu.set_hide_on_checkable_item_selection(false)

	self.add_separator()
	call_deferred("load_window_settings", display, display_menu)

func load_window_settings(display: String, display_menu: PopupMenu):
	var config = ConfigFile.new()
	var error = config.load(CONFIG_FILE)

	var mpf_display = mpf_window.get_display(display)

	if mpf_display.is_default:
		DisplayServer.window_set_title("pygame")

	var borderless_idx := display_menu.get_item_index(3)
	var aot_idx := display_menu.get_item_index(4)

	var display_name = mpf_display.name
	if error == OK:
		var wsize = config.get_value(display_name, "size", Vector2i(800, 600))  # Default size
		var wposition = config.get_value(display_name, "position", Vector2i(100, 100))  # Default position
		var wborderless = config.get_value(display_name, "borderless", false)  # Default to false
		var walwaysOnTop = config.get_value(display_name, "alwaysOnTop", false)  # Default to false

		if borderless_idx != -1:
			display_menu.set_item_checked(borderless_idx, wborderless)
		if aot_idx != -1:
			display_menu.set_item_checked(aot_idx, walwaysOnTop)

		var window = mpf_display.get_window()
		var win_id = window.get_window_id()

		DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, wborderless, win_id)
		DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_ALWAYS_ON_TOP, walwaysOnTop, win_id)

		window.size		 = wsize
		window.position = wposition


	else:
		print("No settings file found or other error: ", error)

func _on_self_item_pressed(id):

	match id:
		0:
			get_tree().quit()


func _on_submenu_item_pressed(id, display: String, display_menu: PopupMenu):

	var mpf_display = mpf_window.get_display(display)
	var display_name = mpf_display.name
	var window = mpf_display.get_window()
	var win_id = window.get_window_id()

	var borderless_idx := display_menu.get_item_index(3)
	var aot_idx := display_menu.get_item_index(4)

	match id:
		3:
			var is_borderless := DisplayServer.window_get_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, win_id)
			if borderless_idx != -1:
				display_menu.set_item_checked(borderless_idx, !is_borderless)
			DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, !is_borderless, win_id)
		4:
			var is_always_on_top := DisplayServer.window_get_flag(DisplayServer.WINDOW_FLAG_ALWAYS_ON_TOP, win_id)
			if aot_idx != -1:
				display_menu.set_item_checked(aot_idx, !is_always_on_top)
			DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_ALWAYS_ON_TOP, !is_always_on_top, win_id)
		5:
			_open_position_dialog(display)

	save_window_settings()

func _on_resolution_selected(id, display):

	var mpf_display = mpf_window.get_display(display)
	var display_name = mpf_display.name
	var window = mpf_display.get_window()
	var win_id = window.get_window_id()

	match id:
		0:
			size = Vector2i(640, 360)
		1:
			size = Vector2i(854, 480)
		2:
			size = Vector2i(1280, 720)
		3:
			size = Vector2i(1600, 900)
		4:
			size = Vector2i(1920, 1080)
		5:
			size = Vector2i(2560, 1440)
		6:
			size = Vector2i(3840, 2160)

	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED, win_id)  # Ensure not fullscreen
	DisplayServer.window_set_size(size, win_id)  # Force the OS-level resize
	save_window_settings()

func save_window_settings():
	var config = ConfigFile.new()
	var error = config.load(CONFIG_FILE)

	if error == OK:

		for display in mpf_window.displays:
			var mpf_display = mpf_window.get_display(display)
			var display_name = mpf_display.name
			var window = mpf_display.get_window()
			var win_id = window.get_window_id()

			config.set_value(display_name, "size", window.size)
			config.set_value(display_name, "position", window.position)
			config.set_value(display_name, "borderless", DisplayServer.window_get_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, win_id))
			config.set_value(display_name, "alwaysOnTop", DisplayServer.window_get_flag(DisplayServer.WINDOW_FLAG_ALWAYS_ON_TOP, win_id))

			error = config.save(CONFIG_FILE)
			if error != OK:
				print("Failed to save window settings: ", error)

func _open_position_dialog(display: String) -> void:
	pos_display = display
	var mpf_display = mpf_window.get_display(display)
	var window = mpf_display.get_window()

	pos_x.value = window.position.x
	pos_y.value = window.position.y

	position_dialog.popup_centered()

func _apply_position_dialog() -> void:
	if pos_display == "":
		return

	var mpf_display = mpf_window.get_display(pos_display)
	var win_id = mpf_display.get_window().get_window_id()

	var new_pos := Vector2i(int(pos_x.value), int(pos_y.value))
	DisplayServer.window_set_position(new_pos, win_id)
	save_window_settings()

func _build_position_dialog():
	position_dialog = AcceptDialog.new()
	position_dialog.title = "Set Window Position"
	add_child(position_dialog)

	var vb = VBoxContainer.new()
	position_dialog.add_child(vb)

	var hb = HBoxContainer.new()
	vb.add_child(hb)

	pos_x = SpinBox.new()
	pos_x.min_value = -10000
	pos_x.max_value = 10000
	pos_x.step = 1
	pos_x.custom_minimum_size.x = 120
	hb.add_child(Label.new())
	hb.get_child(0).text = "X:"
	hb.add_child(pos_x)

	pos_y = SpinBox.new()
	pos_y.min_value = -10000
	pos_y.max_value = 10000
	pos_y.step = 1
	pos_y.custom_minimum_size.x = 120
	hb.add_child(Label.new())
	hb.get_child(2).text = "Y:"
	hb.add_child(pos_y)

	position_dialog.connect("confirmed", Callable(self, "_apply_position_dialog"))
