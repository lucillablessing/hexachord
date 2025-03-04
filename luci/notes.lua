if mode ~= 0 then return end

local notes = {
	f = true,
	g = true,
	a = true,
	b = true,
	c = true,
	d = true,
	e = true
}

luci.notes = {}

for i in pairs(notes) do
	luci.notes[i] = love.graphics.newArrayImage{
		"image/notes/" .. i .. "_0.png",
		"image/notes/" .. i .. "_1.png",
		"image/notes/" .. i .. "_2.png",
	}
end

luci.notes.mapping = {
	[1/4]   = "f",
	[9/32]  = "g",
	[3/8]   = "c",
	[5/12]  = "d",
	[15/32] = "e",
	[1/2]   = "f",
	[9/16]  = "g",
	[5/8]   = "a",
	[2/3]   = "b",
	[3/4]   = "c",
	[5/6]   = "d",
	[15/16] = "e",
	[1]     = "f",
	[9/8]   = "g",
	[5/4]   = "a",
	[4/3]   = "b",
	[3/2]   = "c",
	[5/3]   = "d",
	[15/8]  = "e",
	[9/4]   = "g",
	[5/2]   = "a",
	[10/3]  = "d",
	[4]     = "f"
}