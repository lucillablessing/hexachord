if mode ~= 0 then return end

local syllables = {
	ut  = true,
	re  = true,
	mi  = true,
	fa  = true,
	sol = true,
	la  = true
}

luci.syllables = {}

for i in pairs(syllables) do
	luci.syllables[i] = love.graphics.newArrayImage{
		"image/syllables/" .. i .. "_0.png",
		"image/syllables/" .. i .. "_1.png",
		"image/syllables/" .. i .. "_2.png",
	}
end

luci.syllables.aux_0 = { [0] = "ut", "re", "mi", "fa", "sol", "la" }
luci.syllables.aux_1 = { [48] = "mi", [49] = "fa", [50] = "sol", [51] = "la", [52] = "mi", [53] = "ut" }

luci.syllables.mapping = function(n)
	if n <= 25 then return luci.syllables.aux_0[(n - 2) % 6]
	elseif n <= 46 then return luci.syllables.aux_0[(n - 6) % 7]
	else return luci.syllables.aux_1[n]
	end
end