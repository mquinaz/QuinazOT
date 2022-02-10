function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(PlayerStorageKeys.QuestChests.katanaquestvikinghelmet) == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'The corpse is empty.')
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a viking helmet.')
		player:addItem(2473)
		player:setStorageValue(PlayerStorageKeys.QuestChests.katanaquestvikinghelmet, 1)
	end
	return true
end
