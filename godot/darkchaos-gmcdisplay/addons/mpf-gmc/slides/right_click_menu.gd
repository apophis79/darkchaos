extends PopupMenu

const CONFIG_FILE = "user://settings.cfg"

func _ready():
	self.add_item("Save Window Settings", 0)

	var submenu = PopupMenu.new()
	submenu.name = "resolution_submenu"

	submenu.add_item("640 x 360", 0)
	submenu.add_item("854 x 480", 1)
	submenu.add_item("1280 x 720", 2)
	submenu.add_item("1600 x 900", 3)
	submenu.add_item("1920 x 1080", 4)
	submenu.add_item("2560 x 1440", 5)
	submenu.add_item("3840 x 2160", 6)
	submenu.connect("id_pressed", Callable(self, "_on_resolution_selected"))
	self.add_child(submenu, 1)
	self.add_submenu_item("Window Resolution", "resolution_submenu")
	self.connect("id_pressed", Callable(self, "_on_self_item_pressed"))

	self.add_item("Toggle Borderless Window", 3)
	self.add_item("Toggle Always On Top", 4)


	self.add_separator()
	self.add_item("Exit", 2)

func _on_self_item_pressed(id):
	match id:
		0:
			self.save_window_settings()
		2:
			get_tree().quit()
		3:
			var is_borderless := DisplayServer.window_get_flag(DisplayServer.WINDOW_FLAG_BORDERLESS)
			DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, !is_borderless)
		4:
			var is_always_on_top := DisplayServer.window_get_flag(DisplayServer.WINDOW_FLAG_ALWAYS_ON_TOP)
			DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_ALWAYS_ON_TOP, !is_always_on_top)

func _on_resolution_selected(id):
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

	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)  # Ensure not fullscreen
	DisplayServer.window_set_size(size)  # Force the OS-level resize
	save_window_settings()

func save_window_settings():
	var config = ConfigFile.new()

	var window := get_tree().root.get_window()

	print(window.size)
	print(window.position)
	config.set_value("window", "size", window.size)
	config.set_value("window", "position", window.position)
	config.set_value("window", "borderless", DisplayServer.window_get_flag(DisplayServer.WINDOW_FLAG_BORDERLESS))

	var error = config.save(CONFIG_FILE)
	if error != OK:
		print("Failed to save window settings: ", error)
