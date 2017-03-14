
minetest.register_abm({
	nodenames = {"default:wood"},
	neighbors = {"default:water_source", "default:water_flowing"},
	interval = 10.0,
	chance = 30,
	action = function(pos)
		minetest.env:add_node(pos, {name="decay:rotten_wood"})
	end,
})

minetest.register_node("decay:rotten_wood", {
	description = "Rotten Wood",
	tiles = {"rotten_wood.png"},
	is_ground_content = false,
	groups = {crumbly=3, not_in_creative_inventory = 1},
})


minetest.register_abm({
	nodenames = {"decay:rotten_wood"},
	neighbors = {"default:water_source", "default:water_flowing"},
	interval = 20.0,
	chance = 10,
	action = function(pos)
		minetest.env:add_node(pos, {name="default:dirt"})
	end,
})

minetest.register_abm({
	nodenames = {"decay:rotten_wood"},
	neighbors = {"default:mese"},
	interval = 20.0,
	chance = 10,
	action = function(pos)
		minetest.env:add_node(pos, {name="default:wood"})
	end,
})

minetest.register_abm({
	nodenames = {"default:wood"},
	neighbors = {"decay:rotten_wood"},
	interval = 20.0,
	chance = 50,
	action = function(pos)
		minetest.env:add_node(pos, {name="decay:rotten_wood"})
	end,
})
