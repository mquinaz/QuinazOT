function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(PlayerStorageKeys.QuestChests.carlinsword) == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'The chest is empty.')
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a carlin sword.')
		player:addItem(2395, 1)
		player:setStorageValue(PlayerStorageKeys.QuestChests.carlinsword, 1)
	end
	return true
end
