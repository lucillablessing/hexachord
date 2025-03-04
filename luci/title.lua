if mode ~= 4 then return end

luci.title = {}

luci.title.images = {}

local letters = {"a", "c", "d", "e", "f", "h", "i", "l", "m", "n", "o", "r", "s", "t", "u", "x", "'", "-", "*"}
for _, v in ipairs(letters) do
	local s = v
	if     s == "'" then s = "apostrophe"
	elseif s == "-" then s = "hyphen"
	elseif s == "*" then s = "ji"
	end
	luci.title.images[v] = love.graphics.newArrayImage{
		"image/letters/" .. s .. "_0.png",
		"image/letters/" .. s .. "_1.png",
		"image/letters/" .. s .. "_2.png"
	}
end

luci.title.coords = {
	{ s = "l", ox = 153, oy =  92                     },
	{ s = "u", ox = 175, oy =  92, nx =  81, ny = 190 },
	{ s = "c", ox = 197, oy =  93                     },
	{ s = "i", ox = 219, oy =  93, nx = 222, ny = 190 },
	{ s = "l", ox = 242, oy =  92, nx = 356, ny = 190 },
	{ s = "l", ox = 263, oy =  92, nx = 389, ny = 190 },
	{ s = "a", ox = 284, oy =  92, nx = 410, ny = 190 },
	{ s = "'", ox = 312, oy =  92                     },
	{ s = "s", ox = 329, oy =  92                     },

	{ s = "l", ox = 167, oy = 150                     },
	{ s = "-", ox = 188, oy = 162                     },
	{ s = "t", ox = 201, oy = 150                     },
	{ s = "-", ox = 224, oy = 162                     },
	{ s = "s", ox = 237, oy = 150                     },
	{ s = "-", ox = 258, oy = 162                     },
	{ s = "a", ox = 271, oy = 150                     },
	{ s = "-", ox = 294, oy = 162                     },
	{ s = "m", ox = 308, oy = 150, nx = 194, ny = 189 },

	{ s = "h", ox =  65, oy = 210                     },
	{ s = "e", ox =  87, oy = 210, nx = 161, ny = 192 },
	{ s = "x", ox = 108, oy = 210                     },
	{ s = "a", ox = 128, oy = 208                     },
	{ s = "c", ox = 150, oy = 209                     },
	{ s = "h", ox = 173, oy = 209                     },
	{ s = "o", ox = 195, oy = 209, nx = 332, ny = 191 },
	{ s = "r", ox = 218, oy = 208, nx = 138, ny = 190 },
	{ s = "d", ox = 241, oy = 208                     },

	{ s = "f", ox = 280, oy = 209, nx = 257, ny = 190 },
	{ s = "a", ox = 300, oy = 209, nx = 277, ny = 190 },
	{ s = "n", ox = 322, oy = 209                     },
	{ s = "t", ox = 345, oy = 209, nx = 103, ny = 190 },
	{ s = "a", ox = 367, oy = 209                     },
	{ s = "s", ox = 389, oy = 208, nx = 312, ny = 190 },
	{ s = "i", ox = 407, oy = 208                     },
	{ s = "a", ox = 428, oy = 208                     },

	{ s = "*", ox = 181, oy = 360                     }
}

for _, v in ipairs(luci.title.coords) do
	v.x = v.ox
	v.y = v.oy
	v.i = -1
end