function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(PlayerStorageKeys.QuestChests.spikeswordquest) == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'The chest is empty.')
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a Spikesword.')
		player:addItem(2383, 1)
		player:setStorageValue(PlayerStorageKeys.QuestChests.spikeswordquest, 1)
	end
	return true
end
