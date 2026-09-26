extends SceneTree
## Check an imported project against the extractor's level.json files:
##
##   godot --headless --path PROJECT --import
##   godot --headless --path PROJECT --script res://rc1/check.gd
##
## Every placed mesh must be textured, and the counts, triangles and
## world bounds of each level scene must match what was extracted.


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
		var totals := {"instances": 0, "triangles": 0, "meshes": {}, "untextured": 0,
			"bounds": AABB(), "sky_shells": 0, "sky_triangles": 0}
		walk(root, Transform3D.IDENTITY, false, totals)
		root.free()
		var low := Vector3(info.bounds[0][0], info.bounds[0][1], info.bounds[0][2])
		var high := Vector3(info.bounds[1][0], info.bounds[1][1], info.bounds[1][2])
		var box: AABB = totals.bounds
		var sky: Dictionary = info.get("sky", {"shells": 0, "triangles": 0})
		var ok: bool = (totals.instances == int(info.mesh_instances)
			and totals.triangles == int(info.triangles)
			and totals.meshes.size() == int(info.meshes)
			and totals.untextured == 0
			and totals.sky_shells == int(sky.shells) and totals.sky_triangles == int(sky.triangles)
			and box.position.distance_to(low) < 0.01 and box.end.distance_to(high) < 0.01)
		print("%s: %d instances, %d meshes, %d triangles, %d sky shells, bounds %s: %s" % [
			name, totals.instances, totals.meshes.size(), totals.triangles, totals.sky_shells,
			box, "ok" if ok else "MISMATCH"])
		failed += 0 if ok else 1
	quit(1 if failed else 0)


func walk(node: Node, parent: Transform3D, in_sky: bool, totals: Dictionary) -> void:
	var here: Transform3D = parent * node.transform if node is Node3D else parent
	in_sky = in_sky or node.name == "Sky"
	if node is MeshInstance3D:
		var mesh: Mesh = node.mesh
		var triangles := 0
		for i in mesh.get_surface_count():
			var arrays := mesh.surface_get_arrays(i)
			var indices: PackedInt32Array = arrays[Mesh.ARRAY_INDEX]
			triangles += (indices.size() if not indices.is_empty() else arrays[Mesh.ARRAY_VERTEX].size()) / 3
			var material := mesh.surface_get_material(i) as StandardMaterial3D
			if material == null or (material.albedo_texture == null and not in_sky):
				totals.untextured += 1
		if in_sky:
			totals.sky_shells += 1
			totals.sky_triangles += triangles
		else:
			var box: AABB = here * mesh.get_aabb()
			totals.bounds = box if totals.instances == 0 else totals.bounds.merge(box)
			totals.instances += 1
			totals.triangles += triangles
			totals.meshes[mesh.get_instance_id()] = true
	for child in node.get_children():
		walk(child, here, in_sky, totals)
