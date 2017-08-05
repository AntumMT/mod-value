--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
]]

--- ***value*** mod configuration script.
--
-- Reads values from "mod.conf".
--
-- @script init.lua


local mod_text = nil
local mod_conf = io.open(value.modpath .. '/mod.conf', 'r')
if mod_conf then
	mod_text = mod_conf.read()
end

if mod_text then
	for i, line in ipairs(string.split(mod_text, '\n')) do
		-- FIXME: Remove preceding & following whitespace automatically
		conf_key = string.split(line, ' = ')
		if #conf_key > 1 then
			value[conf_key[1]] = conf_key[2]
		end
	end
end
