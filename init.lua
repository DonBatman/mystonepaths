local material = {
	{ "Cobble", "default_cobble","cobble"},
	{ "Sandstone", "default_sandstone","sandstone"},	
	{ "Desert Stone", "default_desert_stone","desert_stone"},
	{ "Stone", "default_stone","stone"},
	{ "Tree", "default_tree","tree"},
	{ "Desert Sand", "default_desert_sand","desert_sand"},
	{ "Coal", "default_coal_block","coalblock"},
	{ "Clay", "default_clay","clay"},
	{ "Dirt", "default_dirt","dirt"},
}


for i in ipairs(material) do
	local matdesc = material[i][1]
	local imgtile = material[i][2]
	local mat = material[i][3]

minetest.register_alias("mypaths:path_"..mat, "mystonepaths:path_"..mat)


minetest.register_node("mystonepaths:path_"..mat, {
	description = ""..matdesc.." Path",
	drawtype = "nodebox",
	tiles = {""..imgtile..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	buildable_to = true,
--	walkable = true,
	climbable = false,
	groups = {cracky=3},
	stack_max = 250,
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.4375, -0.125, -0.4375, 0}, 
			{-0.4375, -0.5, -0.3125, -0.125, -0.4375, -0.0625}, 
			{-0.375, -0.5, 0.1875, 0, -0.4375, 0.375}, 
			{-0.3125, -0.5, 0.0625, -0.0625, -0.4375, 0.4375}, 
			{0.125, -0.5, 0.125, 0.3125, -0.4375, 0.3125}, 
			{0.1875, -0.5, 0.1875, 0.4375, -0.4375, 0.4375}, 
			{0, -0.5, -0.375, 0.4375, -0.4375, -0.1875}, 
			{0.0625, -0.5, -0.4375, 0.375, -0.4375, -0.125}, 
			{0.0625, -0.5, -0.0625, 0.25, -0.4375, 0.0625}, 
			{0, -0.5, -0.0625, 0.0625, -0.4375, 0}, 
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
        },
        },
	on_place = minetest.rotate_node
})
--Craft
minetest.register_craft({
	output = "mystonepaths:path_"..mat.." 5",
	recipe = {
		{"","default:gravel",""},
		{"","default:"..mat.."",""},
		{"","",""},
	}
})
end

if minetest.get_modpath("myores") then
	local ores = {
			{"Slate","myores_slate","slate"},
			{"Shale","myores_shale","shale"},
			{"Schist","myores_schist","schist"},
			{"Gneiss","myores_gneiss","gneiss"},
			{"Basalt","myores_basalt","basalt"},
			{"Granite","myores_granite","granite"},
			{"Marble","myores_marble","marble"},
			{"Chromium","myores_chromium","chromium"},
			{"Manganese","myores_manganese","manganese"},
			}
			
	
for i in ipairs(ores) do
	local matdesc = ores[i][1]
	local imgtile = ores[i][2]
	local mat = ores[i][3]
			
	minetest.register_node("mystonepaths:path_"..mat, {
		description = ""..matdesc.." Path",
		drawtype = "nodebox",
		tiles = {""..imgtile..".png"},
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		buildable_to = true,
	--	walkable = true,
		climbable = false,
		groups = {cracky=3},
		stack_max = 250,
		sounds = default.node_sound_stone_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-0.375, -0.5, -0.4375, -0.125, -0.4375, 0}, 
				{-0.4375, -0.5, -0.3125, -0.125, -0.4375, -0.0625}, 
				{-0.375, -0.5, 0.1875, 0, -0.4375, 0.375}, 
				{-0.3125, -0.5, 0.0625, -0.0625, -0.4375, 0.4375}, 
				{0.125, -0.5, 0.125, 0.3125, -0.4375, 0.3125}, 
				{0.1875, -0.5, 0.1875, 0.4375, -0.4375, 0.4375}, 
				{0, -0.5, -0.375, 0.4375, -0.4375, -0.1875}, 
				{0.0625, -0.5, -0.4375, 0.375, -0.4375, -0.125}, 
				{0.0625, -0.5, -0.0625, 0.25, -0.4375, 0.0625}, 
				{0, -0.5, -0.0625, 0.0625, -0.4375, 0}, 
			}
		},
        	selection_box = {
                	type = "fixed",
                	fixed = {
                	{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
        	},
        	},
		on_place = minetest.rotate_node
	})
	--Craft
	minetest.register_craft({
		output = "mystonepaths:path_"..mat.." 5",
		recipe = {
			{"","default:gravel",""},
			{"","default:"..mat.."",""},
			{"","",""},
		}
	})
end
end
