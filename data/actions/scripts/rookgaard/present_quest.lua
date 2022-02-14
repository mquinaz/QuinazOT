function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(PlayerStorageKeys.QuestChests.presentquest) == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'The chest is empty.')
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a present to trade back in the town.')
		player:addItem(1990, 1)
		player:setStorageValue(PlayerStorageKeys.QuestChests.presentquest, 1)
	end
	return true
end
