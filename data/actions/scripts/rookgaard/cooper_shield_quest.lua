function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(PlayerStorageKeys.QuestChests.coopershieldquest) == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'The corpse is empty.')
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a cooper shield and a mysterious key.')
		player:addItem(2530)
		local key = player:addItem(2089)
        key:setActionId(4604)
		player:setStorageValue(PlayerStorageKeys.QuestChests.coopershieldquest, 1)
	end
	return true
end
