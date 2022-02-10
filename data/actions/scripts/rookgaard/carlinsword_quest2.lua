function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(PlayerStorageKeys.QuestChests.carlinsword2) == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'The chest is empty.')
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a fishing rod.')
		player:addItem(2580, 1)
		player:setStorageValue(PlayerStorageKeys.QuestChests.carlinsword2, 1)
	end
	return true
end
