local wallPosition = Position(32095, 32173, 8)
local relocatePosition = Position(32096, 32173, 8)

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 1945 then
		local wallItem = Tile(wallPosition):getItemById(1026)
		print(wallItem)
		if wallItem then
			wallItem:remove()
			item:transform(1946)
		end
	else
		Tile(wallPosition):relocateTo(relocatePosition)
		Game.createItem(1026, 1, wallPosition)
		item:transform(1945)
	end
	return true
end
