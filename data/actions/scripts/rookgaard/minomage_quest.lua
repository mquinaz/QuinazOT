function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(PlayerStorageKeys.QuestChests.minomagekey) == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'The chest is empty.')
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a key 4602.')
		local key = player:addItem(2088)
        key:setActionId(4602)
		player:setStorageValue(PlayerStorageKeys.QuestChests.minomagekey, 1)
	end
	return true
end
