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


local conf_exists = false
local conf_lines = {}

local conf = io.open(value.modpath .. '/mod.conf', 'r')
if conf then
	conf:close()
	conf_exists = true
end

if conf_exists then
	for line in io.lines(value.modpath .. '/mod.conf') do
		table.insert(conf_lines, line)
	end
end

for i, line in ipairs(conf_lines) do
	-- FIXME: Remove preceding & following whitespace automatically
	conf_key = string.split(line, ' = ')
	if #conf_key > 1 then
		value[conf_key[1]] = conf_key[2]
	end
end
