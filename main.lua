--[[
local function dump(o)
	if type(o) == 'table' then
		local s = '{ '
		for k, v in pairs(o) do
			if type(k) ~= 'number' then k = '"'..k..'"' end
			s = s .. '['..k..'] = ' .. dump(v) .. ',\n'
		end
		return s .. '} '
	else
		return tostring(o)
	end
end
--]]

function love.draw()
	luci.draw.all()
end


function love.update(dt)
	luci.update.all(dt)
end


function love.load()
	mode = 0

	tau                = 2 * math.pi
	min_sine_amplitude = 1/16
	max_sine_amplitude = 3/16
	fade_speed         = 1/2
	glide_speed        = 4
	image_fade_speed   = 1/3
	scroll_speed       = 2
	transition_speed   = 1/3
	key                = 27/32

	luci = {}

	require "luci.draw"
	require "luci.event"
	require "luci.init"
	require "luci.misc"
	require "luci.notes"
	require "luci.orbs"
	require "luci.piano"
	require "luci.plucks"
	require "luci.sines"
	require "luci.syllables"
	require "luci.timeline"
	require "luci.title"
	require "luci.update"

	luci.init.all()
end


function love.keypressed(k)
	if k == "escape" then love.event.quit()
	elseif k == "space" then
		if mode == 0 then
			counter = counter + 1
			luci.event.all(luci.timeline[counter])
		elseif mode == 1 then
			hexachord:play()
		elseif mode == 4 then
			for _, v in ipairs(luci.title.coords) do v.i = 0 end
		end
	end
end


function love.mousepressed(x, y, b)
	if mode == 1 then
		clicked = true
		mouse_sx = love.mouse.getX()
	end
end