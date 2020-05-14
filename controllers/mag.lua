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
		{
			id="0Gqh4e1S6j0",
			html=[[
			It's hard where you're living
Adding weight to make it balanced
Saying it could be too much
But he's clasping to his tie
There was a finer life
When I was with my friends and I could always see my family
That's what I still want now
Even if I'm here and I know they won't be waiting
Cause I don't want to be alone
I don't want to be here alone
While you're there give back a little more
The return could make you notice
That I'm thinking of a moment
And know its still sound
There was a finer life when you were with us here
And we knew there was a next time
That's what I still want now
Even if I'm there and I think that you won't be waiting
Cause I don't want to be alone
It's hard where you're living
It's hard where you're living
It's hard where you're living
Cause I don't want to be alone
I don't want to be here alone
			]]
		} ,
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
	--self.ids=ids



	local random_index=random(1,#ids)
	self.random_item=ids[random_index]
	return { render = "mag" }
end
