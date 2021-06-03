AddEventHandler('linden_inventory:burger', function(item)
	TriggerEvent('mythic_notify:client:SendAlert', {type = 'inform', text = 'You ate a delicious burger', length = 2500})
end)

AddEventHandler('linden_inventory:water', function(item)
	TriggerEvent('mythic_notify:client:SendAlert', {type = 'inform', text = 'You drank some refreshing water', length = 2500})
end)

AddEventHandler('linden_inventory:cola', function(item)
	TriggerEvent('mythic_notify:client:SendAlert', {type = 'inform', text = 'You drank some delicious eCola', length = 2500})
end)

AddEventHandler('linden_inventory:mustard', function(item)
	TriggerEvent('mythic_notify:client:SendAlert', {type = 'inform', text = 'You.. drank mustard', length = 2500})
end)

AddEventHandler('linden_inventory:bandageCheck', function(item, cb)
	local maxHealth = 200
	local health = GetEntityHealth(ESX.PlayerData.ped)

	if health < maxHealth then cb(true)
	else cb(false) end
end)

AddEventHandler('linden_inventory:bandage', function(item)
	local maxHealth = 200
	local health = GetEntityHealth(ESX.PlayerData.ped)
	local newHealth = math.min(maxHealth, math.floor(health + maxHealth / 16))

	SetEntityHealth(ESX.PlayerData.ped, newHealth)
	TriggerEvent('mythic_notify:client:SendAlert', {type = 'inform', text = 'You feel better already', length = 2500})
end)

AddEventHandler('linden_inventory:armour', function(item)
	SetPlayerMaxArmour(playerID, 100)
	SetPedArmour(ESX.PlayerData.ped, 100)
end)
