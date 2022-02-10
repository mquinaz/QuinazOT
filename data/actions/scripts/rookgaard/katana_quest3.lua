function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(PlayerStorageKeys.QuestChests.katanaquestkatana) == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'The corpse is empty.')
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found a katana.')
		player:addItem(2412)
		player:setStorageValue(PlayerStorageKeys.QuestChests.katanaquestkatana, 1)
	end
	return true
end
