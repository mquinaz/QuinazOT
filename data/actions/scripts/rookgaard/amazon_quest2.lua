function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(PlayerStorageKeys.QuestChests.amazonquest2) == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'The chest is empty.')
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found an amazon helmet.')
		player:addItem(2499, 1)
		player:setStorageValue(PlayerStorageKeys.QuestChests.amazonquest2, 1)
	end
	return true
end
