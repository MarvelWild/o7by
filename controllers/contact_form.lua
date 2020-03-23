return function (self)
    self.page_title = 'Received'
    local message = self.req.params_post.message.."\n"
    --message=message..inspect(self).."\n"
    --message=message..inspect(self.req).."\n"
    --message=message..inspect(self.res).."\n"

    local log=assert(io.open("/usr/local/openresty/nginx/html/logs/app/contact.txt", "a"))
    log:write(message)
    log:close()

    return {render="contact_form"}
end