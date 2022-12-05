minetest.register_node("gardening:fruit_tree", {
	description = ("Fruit Tree"),
	tiles = {"gardening_fruit_tree.png", "gardening_fruit_tree.png", "gardening_fruit_tree_side.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("gardening:fruit_wood", {
	description = ("Fruit Wood Planks"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"gardening_fruit_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("gardening:fruit_leaves", {
	description = S("Fruit Tree Leaves"),
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"gardening_fruit_leaves.png"},
	special_tiles = {"gardening_fruit_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_craft({
	output = "gardening:fruit_wood 4",
	recipe = {
		{"gardening:fruit_tree"},
	}
})