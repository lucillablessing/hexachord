if mode ~= 0 then return end

luci.timeline = {
	{ s = { [0] = 1, [1] = 5/4, [2] = 4/3, [3] = 3/2 } }, -- 0 1 2 3
	{ p = 1 },
	{ p = 9/4 },
	{ p = 5/4 },
	{ p = 2/3 },
	{ p = 3/2 },
	{ p = 10/3, s = { [4] = 5/3 } }, -- 0 1 2 3 4
	{ p = 1 },
	{ p = 9/32 },
	{ p = 5/2 },
	{ p = 4/3 },
	{ p = 3/4 },
	{ p = 10/3, s = { [4] = 0, [5] = 5/6 } }, -- 0 1 2 3 5
	{ p = 3/4, s = { [1] = 0, [2] = 0, [3] = 0, [5] = 0, [6] = 3/4, [7] = 15/16, [8] = 9/8 } }, -- 0 6 7 8
	{ p = 5/12 },
	{ p = 15/16 },
	{ p = 1/2 },
	{ p = 9/8 },
	{ p = 5/2, s = { [9] = 5/4 } }, -- 0 6 7 8 9
	{ p = 3/4 },
	{ p = 5/3 },
	{ p = 15/16 },
	{ p = 1/4 },
	{ p = 9/16 },
	{ p = 5/2, s = { [8] = 0, [10] = 4/3 } }, -- 0 6 7 9 10
	{ t = 1, v = { [10] = true } }, -- 0 6 7 9
	{ p = 1 },
	{ p = 9/8 },
	{ p = 5/8 },
	{ p = 4/3 },
	{ p = 3/8 },
	{ p = 10/3, s = { [6] = 0, [7] = 0, [1] = 4/3, [2] = 3/2 } }, -- 0 1 2 9
	{ t = 1 },
	{ p = 1 },
	{ p = 9/4 },
	{ p = 5/4 },
	{ p = 2/3 },
	{ p = 3/8 },
	{ p = 10/3, s = { [3] = 15/16 } }, -- 0 1 2 3 9
	{ t = 3/4 },
	{ p = 3/2 },
	{ p = 5/6 },
	{ p = 15/32 },
	{ p = 1 },
	{ p = 9/16 },
	{ p = 5/2, s = { [2] = 0, [4] = 3/4 } }, -- 0 1 3 4 9
	{ t = 3/4 },
	{ p = 5/4 },
	{ p = 4/3 },
	{ p = 3/2 },
	{ p = 5/3 },
	{ p = 15/8, s = { [0] = 0, [3] = 0, [4] = 0, [2] = 3/2, [5] = 15/8 } }, -- 1 2 5 9
	{ p = 4, v = { [0] = true, [1] = true, [2] = true, [3] = true, [5] = true, [9] = true } }, -- nil
	{ t = 1, w = { [0] = 1, [1] = 5/4, [2] = 3/2, [3] = 15/8 } },
	{ t = 6/5, w = { [0] = 9/8, [1] = 6/5, [2] = 3/2, [3] = 9/5 } },
	{ t = 4/3, w = { [0] = 1, [1] = 5/4, [2] = 4/3, [3] = 5/3 } },
	{ t = 4/5, w = { [0] = 1, [1] = 6/5, [2] = 3/2, [3] = 8/5 } },
	{ t = 1, w = { [0] = 15/16, [1] = 1, [2] = 5/4, [3] = 3/2 } },
	{ t = 9/8, w = { [0] = 27/32, [1] = 135/128, [2] = 9/8, [3] = 45/32 } },
	{ t = 4/3, w = { [0] = 2/3, [1] = 1, [2] = 5/4, [3] = 4/3 } },
	{ t = 4/5, w = { [0] = 3/4, [1] = 4/5, [2] = 1, [3] = 6/5 } },
	{ t = 1, w = { [0] = 3/4, [1] = 5/6, [2] = 1, [3] = 5/4 } },
	{ q = true },
	{ v = { [1] = true } },
	{ z = true, v = { [0] = true, [2] = true, [3] = true } }
}