farming.register_plant("gardening:potato", {
	description = ("Potato Seed"),
	harvest_description = ("Potato"),
	paramtype2 = "meshoptions",
	inventory_image = "gardening_potato_seed.png",
	steps = 3,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland"},
	groups = {flammable = 4},
})

minetest.register_craftitem("gardening:baked_potato", {
	description = ("Baked Potato"),
	inventory_image = "gardening_baked_potato.png",
	on_use = minetest.item_eat(3),
})

minetest.register_craft({
	type = "cooking",
	output = "gardening:baked_potato",
	recipe = "gardening:potato",
})