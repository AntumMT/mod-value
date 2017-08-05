--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
]]

--- ***value*** mod configuration settings.
--
-- @script settings.lua


--- Sets the number at which item value should be divided to get resell value.
--
-- @setting value.resell_divisor
-- @settype integer
-- @default 2
value.resell_divisor = tonumber(core.settings:get('value.resell_divisor')) or 2


--- Enables money of value 1.
--
-- @setting value.enable_ones
-- @settype bool
-- @default true
value.enable_ones = core.settings:get_bool('value.enable_ones') ~= false

--- Enables money of value 5.
--
-- @setting value.enable_fives
-- @settype bool
-- @default true
value.enable_fives = core.settings:get_bool('value.enable_fives') ~= false

--- Enables money of value 10.
--
-- @setting value.enable_tens
-- @settype bool
-- @default true
value.enable_tens = core.settings:get_bool('value.enable_tens') ~= false

--- Enables money of value 20.
--
-- @setting value.enable_twenties
-- @settype bool
-- @default false
value.enable_twenties = core.settings:get_bool('value.enable_twenties') == true

--- Enables money of value 50.
--
-- @setting value.enable_fifties
-- @settype bool
-- @default false
value.enable_fifties = core.settings:get_bool('value.enable_fifties') == true

--- Enables money of value 100.
--
-- @setting value.enable_hundreds
-- @settype bool
-- @default false
value.enable_hundreds = core.settings:get_bool('value.enable_hundreds') == true

--- Enables money of value 1000.
--
-- @setting value.enable_thousands
-- @settype bool
-- @default false
value.enable_thousands = core.settings:get_bool('value.enable_thousands') == true


--- Item used for money of value 1.
--
-- @setting value.money_ones
-- @settype string
-- @default value:money_1
value.money_ones = core.settings:get('value.money_ones') or 'value:money_1'

--- Item used for money of value 5.
--
-- @setting value.money_fives
-- @settype string
-- @default value:money_5
value.money_fives = core.settings:get('value.money_fives') or 'value:money_5'

--- Item used for money of value 10.
--
-- @setting value.money_tens
-- @settype string
-- @default value:money_10
value.money_tens = core.settings:get('value.money_tens') or 'value:money_10'

--- Item used for money of value 20.
--
-- @setting value.money_twenties
-- @settype string
-- @default value:money_20
value.money_twenties = core.settings:get('value.money_twenties') or 'value:money_20'

--- Item used for money of value 50.
--
-- @setting value.money_fifties
-- @settype string
-- @default value:money_50
value.money_fifties = core.settings:get('value.money_fifties') or 'value:money_50'

--- Item used for money of value 100.
--
-- @setting value.money_hundreds
-- @settype string
-- @default value:money_100
value.money_hundreds = core.settings:get('value.money_hundreds') or 'value:money_100'

--- Item used for money of value 1000.
--
-- @setting value.money_thousands
-- @settype string
-- @default value:money_1000
value.money_thousands = core.settings:get('value.money_thousands') or 'value:money_1000'
