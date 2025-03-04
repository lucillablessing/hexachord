if mode ~= 0 then return end

luci.orbs = {}

luci.orbs.image = love.graphics.newArrayImage{
	"image/orb/0.png",
	"image/orb/1.png",
	"image/orb/2.png",
	"image/orb/3.png"
}

luci.orbs.coords = {
	[2/3]     = { x = -3, y =  0 },
	[3/4]     = { x =  1, y =  0 },
	[4/5]     = { x = -2, y = -1 },
	[5/6]     = { x = -2, y =  1 },
	[27/32]   = { x =  5, y =  0 },
	[15/16]   = { x =  2, y =  1 },
	[1]       = { x = -1, y =  0 },
	[135/128] = { x =  6, y =  1 },
	[9/8]     = { x =  3, y =  0 },
	[6/5]     = { x =  0, y = -1 },
	[5/4]     = { x =  0, y =  1 },
	[4/3]     = { x = -3, y =  0 },
	[45/32]   = { x =  4, y =  1 },
	[3/2]     = { x =  1, y =  0 },
	[8/5]     = { x = -2, y = -1 },
	[5/3]     = { x = -2, y =  1 },
	[9/5]     = { x =  2, y = -1 },
	[15/8]    = { x =  2, y =  1 }
}

luci.orbs.mapping = function(x, y)
	return 244 + 26 * x, 306 - 40 * y
end