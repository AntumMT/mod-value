--[[ LICENSE HEADER
  
  MIT Licensing
  
  Copyright © 2017 Jordan Irwin (AntumDeluge)
  
  See: LICENSE.txt
]]

--- Money items for ***value*** mod.
--
-- @script money.lua


local money_values =  {
	{'ones', '1'},
	{'fives', '5'},
	{'tens', '10'},
	{'twenties', '20'},
	{'fifties', '50'},
	{'hundreds', '100'},
	{'thousands', '1000'},
}

for i, v in ipairs(money_values) do
	if value['enable_' .. v[1]] then
		local money_item = 'value:money_' .. v[2]
		
		if value['money_' .. v[1]] == money_item then
			core.register_item(money_item, {
				-- FIXME: Use original name for money
				description = v[1] .. ' Money',
				inventory_image = .. 'value_money_' .. v[1] .. '.png',
				stack_max = 100,
			})
		end
	end
end
