luci.init = {}


function luci.init.m0()
	counter = 0
	note_image = nil
	syllable_image = nil
	image_alpha = 0
	orbs = nil
	iorbs = -1
end


function luci.init.m1()
	love.window.setMode(1920, 732)
	scroll = -1920
	offset = 1920
	mouse_sx = love.mouse.getX()
	mouse_x = 0
	clicked = false
end


function luci.init.all()
	if     mode == 0 then luci.init.m0()
	elseif mode == 1 then luci.init.m1()
	end
end