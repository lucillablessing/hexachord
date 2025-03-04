luci.update = {}


function luci.update.images(dt)
	if image_alpha > 0 then
		image_alpha = image_alpha - image_fade_speed * dt
		if image_alpha <= 0 then image_alpha = 0 end
	end
	if iorbs >= 0 then
		iorbs = iorbs + glide_speed * dt
		if iorbs >= 1 then
			iorbs = -1
			for i = 0, 3 do
				orbs[i].x = orbs[i].nx
				orbs[i].y = orbs[i].ny
			end
		else
			for i = 0, 3 do
				orbs[i].x = orbs[i].nx * iorbs + orbs[i].ox * (1 - iorbs)
				orbs[i].y = orbs[i].ny * iorbs + orbs[i].oy * (1 - iorbs)
			end
		end
	end
end


function luci.update.scroll(dt)
	if not clicked then return end
	local x = love.mouse.getX()
	mouse_x = x - mouse_sx
	scroll = scroll + mouse_x * dt * scroll_speed
	local scroll = math.floor(scroll + 0.5)
	if scroll <= -1920 then return end
	for i = 0, 3 do
		quad[i]:setViewport(scroll - i * 16384, 0, 1920, 732, 16384, 732)
	end
end


function luci.update.sines(dt)
	for i = 0, 15 do
		local t = luci.sines[i]
		if t.playing then
			if t.fade == 1 then
				t.amplitude = t.amplitude + fade_speed * dt * min_sine_amplitude
				if t.amplitude >= min_sine_amplitude then
					t.amplitude = min_sine_amplitude
					t.fade = 0
				end
				t.source:setVolume(t.amplitude)
			elseif t.fade == -1 then
				t.amplitude = t.amplitude - fade_speed * dt * min_sine_amplitude
				if t.amplitude <= 0 then
					t.amplitude = 0
					t.fade = 0
					t.playing = false
					t.source:stop()
				end
				t.source:setVolume(t.amplitude)
			end
			if t.ipitch >= 0 then
				t.ipitch = t.ipitch + glide_speed * dt
				if t.ipitch >= 1 then
					t.ipitch = -1
					t.pitch = t.npitch
				else
					t.pitch = t.npitch ^ t.ipitch * t.opitch ^ (1 - t.ipitch)
				end
				t.source:setPitch(t.pitch)
			end
		end
	end
end


function luci.update.title(dt)
	for _, v in ipairs(luci.title.coords) do
		if v.i >= 0 then
			v.i = v.i + transition_speed * dt
			if v.i >= 1 then
				v.i = -2
				if v.nx then
					v.x = v.nx
					v.y = v.ny
				end
			else
				if v.nx then
					v.x = v.nx * v.i + v.ox * (1 - v.i)
					v.y = v.ny * v.i + v.oy * (1 - v.i)
				end
			end
		end
	end
end


function luci.update.all(dt)
	if mode == 0 then
		luci.update.sines(dt)
		luci.update.images(dt)
	elseif mode == 1 then
		luci.update.scroll(dt)
	elseif mode == 4 then
		luci.update.title(dt)
	end
end