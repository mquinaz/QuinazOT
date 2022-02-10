function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	if player:isPremium() then
		return true
	end

	local failPosition = Position(position.x+1, position.y, 7)
	failPosition:sendMagicEffect(CONST_ME_MAGIC_BLUE)
	player:teleportTo(failPosition)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You need to be a premium account.')
	return true
end