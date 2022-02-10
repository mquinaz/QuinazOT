function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(PlayerStorageKeys.QuestChests.carlinsword3) == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'The chest is empty.')
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found arrows.')
		player:addItem(2544, 100)
		player:addItem(2545, 50)
		player:setStorageValue(PlayerStorageKeys.QuestChests.carlinsword3, 1)
	end
	return true
end
