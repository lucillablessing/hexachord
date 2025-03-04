luci.draw = {}


function luci.draw.m0()
	if note_image then
		local frame = (math.floor(love.timer.getTime() * 6) % 3) + 1
		love.graphics.setColor(1, 1, 1, image_alpha)
		love.graphics.drawLayer(note_image, frame, 224, 298)
		love.graphics.drawLayer(syllable_image, frame, 238, 352)
	end
	if orbs then
		love.graphics.setColor(1, 1, 1, 1)
		local frame = (math.floor(love.timer.getTime() * 6) % 4) + 1
		for i = 0, 3 do
			local x = math.floor(orbs[i].x + 0.5)
			local y = math.floor(orbs[i].y + 0.5)
			love.graphics.drawLayer(luci.orbs.image, frame, x, y)
		end
	end
end


function luci.draw.m1()
	for i = 0, 3 do
		love.graphics.draw(score[i], quad[i], 0, 0)
	end
end


function luci.draw.m2()
	local frame = (math.floor(love.timer.getTime() * 6) % 3) + 1
	love.graphics.drawLayer(blessing, frame, 0, 184)
end


function luci.draw.m3()
	local frame = (math.floor(love.timer.getTime() * 6) % 3) + 1
	love.graphics.drawLayer(lattice, frame, 0, 86)
end


function luci.draw.m4()
	local frame = (math.floor(love.timer.getTime() * 6) % 3) + 1
	for _, v in ipairs(luci.title.coords) do
		local t = v.nx ~= nil
		if t or v.i == -1 then
			love.graphics.setColor(1, 1, 1, 1)
		elseif v.i ~= -2 then
			love.graphics.setColor(1, 1, 1, 1 - v.i)
		end
		if t or v.i ~= -2 then
			local x, y = math.floor(v.x + 0.5), math.floor(v.y + 0.5)
			love.graphics.drawLayer(luci.title.images[v.s], frame, x, y)
		end
	end
end


function luci.draw.all()
	if     mode == 0 then luci.draw.m0()
	elseif mode == 1 then luci.draw.m1()
	elseif mode == 2 then luci.draw.m2()
	elseif mode == 3 then luci.draw.m3()
	elseif mode == 4 then luci.draw.m4()
	end
end