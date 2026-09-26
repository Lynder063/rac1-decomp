extends Node3D
## An extracted level. Edit it as an ordinary scene; run it (F6) to fly around.
##
## Right mouse: look. WASD: move. Q/E: down/up. Shift: faster. Wheel: speed.
## F: frame the terrain. K: toggle the sky. Esc: release the mouse.
## "-- --capture out.png" saves the first frame and quits.

var camera: Camera3D
var sky: Node3D
var speed := 30.0
var center := Vector3.ZERO
var extent := 100.0


func _ready() -> void:
	var bounds := terrain_bounds()
	center = bounds.get_center()
	extent = maxf(bounds.size.length(), 10.0)
	speed = extent * 0.12

	var environment := Environment.new()
	environment.background_mode = Environment.BG_COLOR
	environment.background_color = Color(0.07, 0.09, 0.12)
	environment.ambient_light_source = Environment.AMBIENT_SOURCE_COLOR
	environment.ambient_light_color = Color(0.85, 0.9, 1.0)
	environment.ambient_light_energy = 0.7
	var world := WorldEnvironment.new()
	world.environment = environment
	add_child(world)
	var sun := DirectionalLight3D.new()
	sun.rotation_degrees = Vector3(-55, -35, 0)
	sun.light_energy = 0.8
	add_child(sun)

	camera = Camera3D.new()
	camera.near = 0.05
	camera.far = maxf(4000.0, extent * 10.0)
	add_child(camera)
	camera.make_current()
	frame_terrain()
	sky = get_node_or_null("Game/Sky")
	if sky != null:
		# The game draws the sky at infinity: push the shells out past the level.
		var radius := 1.0
		for node in sky.find_children("*", "MeshInstance3D", true, false):
			radius = maxf(radius, (node as MeshInstance3D).get_aabb().get_longest_axis_size() * 0.5)
		sky.scale = Vector3.ONE * (camera.far * 0.45 / radius)
		sky.visible = true
		sky.global_position = camera.global_position

	var args := OS.get_cmdline_user_args()
	var at := args.find("--capture")
	if at != -1 and at + 1 < args.size():
		await RenderingServer.frame_post_draw
		get_viewport().get_texture().get_image().save_png(args[at + 1])
		get_tree().quit()


func terrain_bounds() -> AABB:
	var bounds := AABB()
	var first := true
	for node in find_children("Terrain_*", "MeshInstance3D", true, false):
		var mesh := node as MeshInstance3D
		var box := mesh.global_transform * mesh.get_aabb()
		bounds = box if first else bounds.merge(box)
		first = false
	return bounds


func frame_terrain() -> void:
	camera.position = center + Vector3(0.65, 0.55, 0.65) * extent
	camera.look_at(center)


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_WHEEL_UP:
			speed = minf(speed * 1.25, 2000.0)
		elif event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
			speed = maxf(speed / 1.25, 0.1)
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_RIGHT:
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED if event.pressed else Input.MOUSE_MODE_VISIBLE
	elif event is InputEventMouseMotion and Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
		camera.rotation.y -= event.relative.x * 0.003
		camera.rotation.x = clampf(camera.rotation.x - event.relative.y * 0.003, -1.55, 1.55)
	elif event is InputEventKey and event.pressed and not event.echo:
		match event.keycode:
			KEY_ESCAPE:
				Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
			KEY_F:
				frame_terrain()
			KEY_K:
				if sky != null:
					sky.visible = not sky.visible


func _process(delta: float) -> void:
	var direction := Vector3(
		float(Input.is_physical_key_pressed(KEY_D)) - float(Input.is_physical_key_pressed(KEY_A)),
		float(Input.is_physical_key_pressed(KEY_E)) - float(Input.is_physical_key_pressed(KEY_Q)),
		float(Input.is_physical_key_pressed(KEY_S)) - float(Input.is_physical_key_pressed(KEY_W)))
	var boost := 4.0 if Input.is_physical_key_pressed(KEY_SHIFT) else 1.0
	camera.position += camera.basis * direction.normalized() * speed * boost * delta
	if sky != null:
		sky.global_position = camera.global_position
