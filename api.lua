--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
]]

--- ***value*** mod global functions.
--
-- @script api.lua


--- Retrieves an item object for manipulation.
--
-- @function getItemObject
-- @local
-- @tparam string item_name Name of item desired to retrieve.
-- @treturn item_object Item object retrieved with ***item_name*** (FIXME: Replace "item_object" with actual type name).
local function getItemObject(item_name)
	return core.registered_items[item_name]
end


--- Sets monetary value for an item.
--
-- @function value.set
-- @tparam string item_name Name of item of which to set value.
-- @tparam int v Monetary value to set for ***item_name***.
-- @tparam bool ***true*** if newly set value is equal to ***v***.
function value.set(item_name, v)
	local item = getItemObject(item_name)
	item.value = v
	item.resell_value = v / value.resell_divisor
	
	if item.value == nil then
		return nil
	end
	
	return item.value == v
end


--- Retrieves monetary value of an item.
--
-- @function value.get
-- @tparam string item_name
-- @tparam bool resell Get resell value instead.
-- @default false
-- @treturn bool
function value.get(item_name, resell)
	resell = resell ~= false
	
	if resell then
		return getItemObject(item_name).resell_value
	end
	
	return getItemObject(item_name).value
end


--- Removes value attribute from an item.
--
-- Convenience function that is equivalent to ***value.set(item_name, nil)***.
-- @function value.remove
-- @tparam string item_name
-- @treturn bool
-- @see value.set
function value.remove(item_name)
	return value.set(item_name, nil) == nil
end


--
function value.sell(player, item_name)
end


function value.buy(player, item_name)
end
