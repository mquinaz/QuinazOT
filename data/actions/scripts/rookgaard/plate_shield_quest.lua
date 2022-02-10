function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(PlayerStorageKeys.QuestChests.plateshield) == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'The chest is empty.')
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a plate shield.')
		player:addItem(2510, 1)
		player:setStorageValue(PlayerStorageKeys.QuestChests.plateshield, 1)
	end
	return true
end
