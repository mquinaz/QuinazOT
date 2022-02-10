function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(PlayerStorageKeys.QuestChests.rapierquest) == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'The corpse is empty.')
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a rapier.')
		player:addItem(2384)
		player:setStorageValue(PlayerStorageKeys.QuestChests.rapierquest, 1)
	end
	return true
end
