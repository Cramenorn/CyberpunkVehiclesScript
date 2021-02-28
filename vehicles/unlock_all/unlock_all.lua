local Unlock = { }

function Unlock.UnlockAllVehicles()
	local vs = Game.GetVehicleSystem()
	vs:EnableAllPlayerVehicles()
	print("All vehicles are unlocked")
end

return Unlock