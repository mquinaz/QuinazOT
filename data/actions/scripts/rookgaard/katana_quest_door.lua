function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(PlayerStorageKeys.QuestChests.katanaquestkey) == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'The chest is empty.')
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a key 4603.')
		local key = player:addItem(2088)
        key:setActionId(4603)
		player:setStorageValue(PlayerStorageKeys.QuestChests.katanaquestkey, 1)
	end
	return true
end
