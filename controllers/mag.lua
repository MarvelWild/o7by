-- idea: pick tags
-- roll
-- remember shown
-- fav button

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
		--		'Au46lJu8icA',
	}
	self.ids=ids



	local random_index=random(1,#ids)
	self.random_id=ids[random_index]
	return { render = "mag" }
end
