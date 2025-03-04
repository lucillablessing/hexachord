if mode ~= 0 then return end

luci.event = {}


function luci.event.plucks(e)
	local t = luci.plucks[e.p]
	if t:isPlaying() then t:seek(0) else t:play() end
	note_image = luci.notes[luci.notes.mapping[e.p]]
	syllable_image = luci.syllables[luci.syllables.mapping(counter)]
	image_alpha = 1
end


function luci.event.piano(e)
	local t = luci.piano[e.t]
	if t:isPlaying() then t:seek(0) else t:play() end
end


function luci.event.sines(e)
	for i, v in pairs(e.s) do
		local t = luci.sines[i]
		if v == 0 then
			t.fade = -1
		else
			t.playing = true
			t.pitch = key * v
			t.fade = 1
			t.source:setPitch(t.pitch)
			t.source:play()
		end
	end
end


function luci.event.sinesx(e)
	for i in pairs(e.v) do
		local t = luci.sines[i]
		t.playing = false
		t.amplitude = 0
		t.fade = 0
		t.source:stop()
	end
end


function luci.event.orbs(e)
	orbs = orbs or { [0] = {}, [1] = {}, [2] = {}, [3] = {} }
	for i, v in pairs(e.w) do
		local t = luci.sines[i]
		local npitch = key * v
		local r = luci.orbs.coords[v]
		local x, y = luci.orbs.mapping(r.x, r.y)
		if not t.playing then
			orbs[i].x = x
			orbs[i].y = y
			orbs[i].nx = x
			orbs[i].ny = y
			orbs[i].ox = x
			orbs[i].oy = y
			t.playing = true
			t.pitch = npitch
			t.amplitude = max_sine_amplitude
			t.source:setVolume(t.amplitude)
			t.source:setPitch(npitch)
			t.source:play()
		else
			orbs[i].nx = x
			orbs[i].ny = y
			orbs[i].ox = orbs[i].x
			orbs[i].oy = orbs[i].y
			iorbs = 0
			t.npitch = npitch
			t.opitch = t.pitch
			t.ipitch = 0
		end
	end
end


function luci.event.melody(e)
	melody:play()
end


function luci.event.bell(e)
	melody:stop()
	bell:play()
	orbs = nil
end


function luci.event.all(e)
	if e.p then luci.event.plucks(e) end
	if e.t then luci.event.piano(e)  end
	if e.s then luci.event.sines(e)  end
	if e.v then luci.event.sinesx(e) end
	if e.w then luci.event.orbs(e)   end
	if e.q then luci.event.melody(e) end
	if e.z then luci.event.bell(e)   end
end