local function m0()
	melody = love.audio.newSource("audio/melody.wav", "static")
	bell = love.audio.newSource("audio/bell.wav", "static")
end


local function m1()
	hexachord = love.audio.newSource("audio/hexachord.ogg", "stream")
	score = { [0] =
		love.graphics.newImage("image/hexachord/0.png"),
		love.graphics.newImage("image/hexachord/1.png"),
		love.graphics.newImage("image/hexachord/2.png"),
		love.graphics.newImage("image/hexachord/3.png")
	}
	quad = { [0] =
		love.graphics.newQuad( -1920, 0, 1920, 732, 16384, 732),
		love.graphics.newQuad(-18304, 0, 1920, 732, 16384, 732),
		love.graphics.newQuad(-34688, 0, 1920, 732, 16384, 732),
		love.graphics.newQuad(-51072, 0, 1920, 732, 16384, 732)
	}
	for i = 0, 3 do score[i]:setWrap("clampzero") end
end


local function m2()
	blessing = love.graphics.newArrayImage{
		"image/blessing/0.png",
		"image/blessing/1.png",
		"image/blessing/2.png"
	}
end


local function m3()
	lattice = love.graphics.newArrayImage{
		"image/lattice/0.png",
		"image/lattice/1.png",
		"image/lattice/2.png"
	}
end


if     mode == 0 then m0()
elseif mode == 1 then m1()
elseif mode == 2 then m2()
elseif mode == 3 then m3()
end