function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(PlayerStorageKeys.QuestChests.leatherset) == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'The chest is empty.')
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a leather set.')
		player:addItem(2649, 1)
		player:addItem(2643, 1)
		player:addItem(2461, 1)
		player:addItem(2386, 1)
		player:setStorageValue(PlayerStorageKeys.QuestChests.leatherset, 1)
	end
	return true
end
