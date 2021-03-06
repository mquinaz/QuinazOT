local doorPosition = Position(32177, 32148, 11)
local relocatePosition = Position(32178, 32148, 11)

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 1946 then
		local doorItem = Tile(doorPosition):getItemById(1209)
		if doorItem then
			doorItem:transform(1211)
			item:transform(1945)
		end
	else
		local tile = Tile(doorPosition)
		local doorItem = tile:getItemById(1211)
		if doorItem then
			tile:relocateTo(relocatePosition, true)
			doorItem:transform(1209)
			item:transform(1946)
		end
	end
	return true
end
