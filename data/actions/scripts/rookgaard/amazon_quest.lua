function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(PlayerStorageKeys.QuestChests.amazonquest1) == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'The chest is empty.')
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found an amazon shield.')
		player:addItem(2537, 1)
		player:setStorageValue(PlayerStorageKeys.QuestChests.amazonquest1, 1)
	end
	return true
end
