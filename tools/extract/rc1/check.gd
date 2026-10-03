extends SceneTree
## Check an imported project against the extractor's level.json files:
##
##   godot --headless --path PROJECT --import
##   godot --headless --path PROJECT --script res://rc1/check.gd
##
## Every placed mesh must be textured; the counts, triangles and world
## bounds of each level scene, its sky panorama and its placed mobys must
## match what was extracted. Moby markers are stand-ins, not geometry, so
## they are counted on their own. The collision layer (Game/Collision, hidden)
## is not one of the textured meshes; its triangles are compared with
## level.json separately.


func _initialize() -> void:
	var failed := 0
	for name in DirAccess.get_directories_at("res://levels"):
		var info: Dictionary = JSON.parse_string(
			FileAccess.get_file_as_string("res://levels/%s/level.json" % name))
		var scene := load("res://levels/%s/%s.tscn" % [name, name]) as PackedScene
		if scene == null:
			printerr("%s: scene did not load (is the project imported?)" % name)
			failed += 1
			continue
		var root := scene.instantiate()
		var totals := {"instances": 0, "triangles": 0, "meshes": {}, "untextured": 0, "bounds": AABB()}
		walk(root, Transform3D.IDENTITY, totals)
		var sky := sky_size(root)
		var mobys := moby_count(root)
		var collision := collision_triangles(root)
		var expected_collision := int(info.collision.triangles) if info.has("collision") else 0
		root.free()
		var low := Vector3(info.bounds[0][0], info.bounds[0][1], info.bounds[0][2])
		var high := Vector3(info.bounds[1][0], info.bounds[1][1], info.bounds[1][2])
		var box: AABB = totals.bounds
		var expected_sky: Array = info.sky.panorama if info.has("sky") else [0, 0]
		var expected_mobys: int = int(info.mobys.instances) if info.has("mobys") else 0
		var ok: bool = (totals.instances == int(info.mesh_instances)
			and totals.triangles == int(info.triangles)
			and totals.meshes.size() == int(info.meshes)
			and totals.untextured == 0
			and collision == expected_collision
			and sky == Vector2i(int(expected_sky[0]), int(expected_sky[1]))
			and mobys == expected_mobys
			and box.position.distance_to(low) < 0.01 and box.end.distance_to(high) < 0.01)
		print("%s: %d instances, %d meshes, %d triangles, collision %d, sky %s, %d mobys, bounds %s: %s" % [
			name, totals.instances, totals.meshes.size(), totals.triangles, collision, sky, mobys, box,
			"ok" if ok else "MISMATCH"])
		failed += 0 if ok else 1
	quit(1 if failed else 0)


func walk(node: Node, parent: Transform3D, totals: Dictionary) -> void:
	if node.name == &"Mobys":
		return
	var here: Transform3D = parent * node.transform if node is Node3D else parent
	if node.name == "Collision" and node.get_parent().name == "Game":
		return  # A layer for the editor, counted by collision_triangles().
	if node is MeshInstance3D:
		var mesh: Mesh = node.mesh
		for i in mesh.get_surface_count():
			var arrays := mesh.surface_get_arrays(i)
			var indices: PackedInt32Array = arrays[Mesh.ARRAY_INDEX]
			totals.triangles += (indices.size() if not indices.is_empty() else arrays[Mesh.ARRAY_VERTEX].size()) / 3
			var material := mesh.surface_get_material(i) as StandardMaterial3D
			if material == null or material.albedo_texture == null:
				totals.untextured += 1
		var box: AABB = here * mesh.get_aabb()
		totals.bounds = box if totals.instances == 0 else totals.bounds.merge(box)
		totals.instances += 1
		totals.meshes[mesh.get_instance_id()] = true
	for child in node.get_children():
		walk(child, here, totals)


## The size of the environment's sky panorama, or zero without one.
func sky_size(root: Node) -> Vector2i:
	var world := root.get_node_or_null("WorldEnvironment") as WorldEnvironment
	if world == null or world.environment == null or world.environment.sky == null:
		return Vector2i.ZERO
	var material := world.environment.sky.sky_material as PanoramaSkyMaterial
	if material == null or material.panorama == null:
		return Vector2i.ZERO
	return Vector2i(material.panorama.get_width(), material.panorama.get_height())


## Placed mobys: the children of Game/Mobys that are instances of a class scene.
func moby_count(root: Node) -> int:
	var mobys := root.get_node_or_null("Game/Mobys")
	if mobys == null:
		return 0
	var count := 0
	for child in mobys.get_children():
		count += 1 if child.scene_file_path.begins_with("res://") and child.has_meta("rc1_index") else 0
	return count


## The triangles of the collision layer, which must be hidden by default.
func collision_triangles(root: Node) -> int:
	var layer := root.get_node_or_null("Game/Collision") as Node3D
	if layer == null:
		return 0
	if layer.visible:
		printerr("Game/Collision should be hidden by default")
		return -1
	var total := 0
	for node in layer.find_children("*", "MeshInstance3D", true, false):
		var mesh: Mesh = (node as MeshInstance3D).mesh
		for i in mesh.get_surface_count():
			var arrays := mesh.surface_get_arrays(i)
			var indices: PackedInt32Array = arrays[Mesh.ARRAY_INDEX]
			total += (indices.size() if not indices.is_empty() else arrays[Mesh.ARRAY_VERTEX].size()) / 3
	return total
