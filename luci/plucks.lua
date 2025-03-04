if mode ~= 0 then return end

local plucks = {
	[1/4]   = "1_4",
	[9/32]  = "9_32",
	[3/8]   = "3_8",
	[5/12]  = "5_12",
	[15/32] = "15_32",
	[1/2]   = "1_2",
	[9/16]  = "9_16",
	[5/8]   = "5_8",
	[2/3]   = "2_3",
	[3/4]   = "3_4",
	[5/6]   = "5_6",
	[15/16] = "15_16",
	[1]     = "1",
	[9/8]   = "9_8",
	[5/4]   = "5_4",
	[4/3]   = "4_3",
	[3/2]   = "3_2",
	[5/3]   = "5_3",
	[15/8]  = "15_8",
	[9/4]   = "9_4",
	[5/2]   = "5_2",
	[10/3]  = "10_3",
	[4]     = "4"
}

luci.plucks = {}

for i, v in pairs(plucks) do
	luci.plucks[i] = love.audio.newSource("audio/plucks/" .. v .. ".wav", "static")
end