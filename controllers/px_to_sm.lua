
return function(self)
	local items={}
	for i=10,100,5 do
		table.insert(items,i)
	end
	
	
	self.items=items
	self.page_title = 'Px to sm'
	return { render = "px_to_sm" }
end
