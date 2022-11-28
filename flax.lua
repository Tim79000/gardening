farming.register_plant("gardening:flax", {
	description = ("Flax Seed"),
	harvest_description = ("Flax"),
	paramtype2 = "meshoptions",
	inventory_image = "gardening_flax_seed.png",
	steps = 4,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland"},
	groups = {flammable = 4},
})

minetest.register_craftitem("gardening:linen", {
	description = ("Linen"),
	inventory_image = "gardening_linen.png",
	groups = {linen = 1},
})

minetest.register_craft({
	output = "gardening:linen",
	recipe = {
		{"gardening:flax"},
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "gardening:flax",
	burntime = 1,
})