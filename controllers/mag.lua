-- idea: pick tags games movie music
-- roll
-- remember shown
-- fav button
-- progress
-- todo: meta, lyrics, stuff

return function(self)
	self.page_title = 'Mag'

	-- todo: read and store meta
	local ids={
		'-zwVBYpJ3A4',
		'-9pgIVcB3rk',
		'KQE29az48gM',
		'GYecrJwh0QE',
		'gB_y8LAEVtg',
		'wpYZsKYUzOI',
		'fU7hZ3smj0g',
		'icrE3FSxkb4',
		'BlwrRdiwR74',
		'9fvUHQToXuY',
		'Zrock_tnsSQ',
		'0Gqh4e1S6j0',
		'Eg42h8fgk4k',
		'bbHZUS5zLhE',
		's3YAE_uK8AM',
		'm53dGt3h9VA',
		'Lp9GgdCgMXk',
		'42JxVqZ9QFo',
		'EBx_FuZC9Q0',
		'bqdbYEaph9Q',
		'25MziL_5BJA',
		'wR5zlx56VkA',
		'k_oTQd93eRI',
		'JZ6ZzJeWgpY',
		'ftqkP3n2qLU',
		'QyZeJr5ppm8',
		'ZslD5_x0UTU',
		'_k1y8pymrF4',
		--		'Au46lJu8icA',
	}
	self.ids=ids



	local random_index=random(1,#ids)
	self.random_id=ids[random_index]
	return { render = "mag" }
end
