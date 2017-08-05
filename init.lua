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
value.modname = core.get_current_modname()
value.modpath = core.get_modpath(value.modname)


local scripts = {
	'config',
	'settings',
	'api',
	'money',
}

for i, s in ipairs(scripts) do
	dofile(value.modpath .. '/' .. s .. '.lua')
end


-- DEBUG:
if core.settings:get_bool('enable_debug_mods') then
	core.log('action', 'DEBUG: [' .. value.modname .. '] Version: ' .. tostring(value.version))
end
