function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	if player:getLevel() >= 3 then
		return true
	end

	local failPosition = Position(position.x, position.y+1, 6)
	player:teleportTo(failPosition)
	failPosition:sendMagicEffect(CONST_ME_MAGIC_BLUE)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You need to be at least Level 3 in order to pass.')
	return true
end