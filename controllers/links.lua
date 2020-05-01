
return function(self)
    self.page_title = 'Links'

	self.links={
		--{text="", url=""},
		{text="fresh itch games", url="https://itch.io/games/newest/fresh"},
		{text="fresh gamejolt games", url="https://gamejolt.com/games/new"},
		{text="fresh steam games", url="https://store.steampowered.com/explore/new/"},
		{text="gamedev streams", url="https://www.twitch.tv/directory/all/tags/f588bd74-e496-4d11-9169-3597f38a5d25"},
		{text="twitch following", url="https://www.twitch.tv/directory/following"},
		{text="my channel", url="https://www.twitch.tv/marvelme"},

		-- todo: personal area
		--{["translate.ru"]="https://translate.ru"},
	}
    return { render = "links" }
end
