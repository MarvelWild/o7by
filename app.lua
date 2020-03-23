-- app.lua
local lapis = require("lapis")
local app = lapis.Application()

math.randomseed(os.time());

app:enable("etlua")
app.layout = require "views.layout"

local index = require "controllers.index"
local about = require "controllers.about"
local gamedev = require "controllers.gamedev"
local webdev = require "controllers.webdev"
local contact = require "controllers.contact"
local contact_form = require "controllers.contact_form"


-- local index=require "src.controllers.index"
inspect=require "lib.inspect.inspect"


-- Public
app:match("/", index)
app:match("/about", about)
app:match("/gamedev", gamedev)
app:match("/webdev", webdev)
app:match("/contact", contact)
app:post("/contact-form", contact_form)



--app:get("/test",
--function(self)
--	return "<pre>"..inspect(self).."</pre>"
--end
--)



app:get("/hello", function(self)
    self.rnd=math.random()
    self.rnd2=math.random()
    return {render="hello"}
end)

function app:handle_404()
    return { status = 404, layout = false, "404 not found" }
end

return app
