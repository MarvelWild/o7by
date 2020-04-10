rawset(_G, 'socket', false)
rawset(_G, 'lpeg', false)

-- app.lua
local lapis = require("lapis")
local app = lapis.Application()

local socket = require("socket")  -- gettime() has higher precision than os.time()

math.randomseed(socket.gettime()*10000);
random=math.random

app:enable("etlua")
app.layout = require "views.layout"

local index = require "controllers.index"
local about = require "controllers.about"
local gamedev = require "controllers.gamedev"
local dev = require "controllers.webdev"
local contact = require "controllers.contact"
local contact_form = require "controllers.contact_form"
local mag = require "controllers.mag"
local art = require "controllers.art"
local links = require "controllers.links"
local auth = require "controllers.auth"
local badges = require "controllers.badges"
local error = require "controllers.error"
local tools = require "controllers.tools"
local guid_controller = require "controllers.guid"
local support = require "controllers.support"
local px_to_sm = require "controllers.px_to_sm"
--local administrator = require "controllers.admin"


-- local index=require "src.controllers.index"
local inspect = require "lib.inspect.inspect"


-- Public
app:match("/", index)
app:match("/about", about)
app:match("/gamedev", gamedev)
app:match("/dev", dev)
app:match("/contact", contact)
app:match("/mag", mag)
app:match("/art", art)
app:match("/links", links)
app:match("/tools", tools)
app:match("/px_to_sm", px_to_sm)
app:match("/support", support)
app:match("/badges",
	badges
	-- no title this way
	--function()
	--	return function(self)
	--		self.page_title = 'badges'
	--		return { render = "badges" }
	--	end
	--end
)
app:match("/auth", auth)




app:match("/guid", guid_controller)

app:match("/robots.txt", function()
	print("robotx requested")
	return { layout=false, "User-agent: *\nAllow: /"}
end)

app:post("/contact-form", contact_form)



--app:get("/test",
--function(self)
--	return "<pre>"..inspect(self).."</pre>"
--end
--)



app:get("/rnd", function(self)
	self.rnd = math.random()
	self.rnd2 = math.random()
	return { layout=false, tostring(self.rnd) }
end)

function app:handle_404()
	-- layout = false, "404 not found"
	return { status = 404, render="error" }
	--return { error }
end

return app
