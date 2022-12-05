farming.register_plant("gardening:radish", {
	description = ("Radish Seed"),
	harvest_description = ("Radish"),
	paramtype2 = "meshoptions",
	inventory_image = "gardening_radish_seed.png",
	steps = 4,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland"},
	groups = {flammable = 4},
})