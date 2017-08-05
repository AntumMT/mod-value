--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
]]

--- ***value*** mod initialization script.
--
-- @script init.lua


--- The global namespace.
--
-- @table value
-- @tfield string modname Name of this mod (e.g. "value").
-- @tfield string modpath Path to the installed mod's location.
-- @tfield string version Version of this mod.
value = {}


if core.global_exists('modconf') then
	modconf.readConfig(value)
end

if value.name == nil then
	value.name = core.get_current_modname()
end

value.path = core.get_modpath(value.name)


local scripts = {
	'settings',
	'api',
	'money',
}

for i, s in ipairs(scripts) do
	dofile(value.path .. '/' .. s .. '.lua')
end


-- DEBUG:
if core.settings:get_bool('enable_debug_mods') then
	core.log('action', 'DEBUG: [' .. value.name .. '] Version: ' .. tostring(value.version))
end
