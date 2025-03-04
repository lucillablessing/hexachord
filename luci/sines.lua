if mode ~= 0 then return end

luci.sines = {}

local sine = love.sound.newSoundData(100, 44000, 16, 1)
for i = 0, 99 do
	sine:setSample(i, math.sin(i * tau / 100))
end

for i = 0, 15 do
	local t = love.audio.newSource(sine)
	t:setLooping(true)
	luci.sines[i] = {
		source = t,
		playing = false,
		pitch = key,
		npitch = key,
		opitch = key,
		ipitch = -1,
		amplitude = 0,
		fade = 0
	}
end