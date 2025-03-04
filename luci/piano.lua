if mode ~= 0 then return end

local piano = {
	[3/4] = "3_4",
	[4/5] = "4_5",
	[1]   = "1",
	[9/8] = "9_8",
	[6/5] = "6_5",
	[4/3] = "4_3"
}

luci.piano = {}

for i, v in pairs(piano) do
	luci.piano[i] = love.audio.newSource("audio/piano/" .. v .. ".wav", "static")
end