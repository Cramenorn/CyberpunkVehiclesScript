Vehicles = {
	showUI = false
}

function Vehicles:new()
    Vehicles.Unlock = require("unlock_all/unlock_all")
    
    registerForEvent("onOverlayOpen", function()
        Vehicles.showUI = true
    end)
	
    registerForEvent("onOverlayClose", function()
        Vehicles.showUI = false
    end)

    registerForEvent("onDraw", function()
		if (Vehicles.showUI) then
            ImGui.SetNextWindowPos(0, 500, ImGuiCond.FirstUseEver)
            ImGui.SetNextWindowSize(200, 350, ImGuiCond.FirstUseEver)
            if ImGui.Begin("Unique Window Name") then
                ImGui.Text("Vehicles hacks")
                if (ImGui.Button("Unlock All Vehicles")) then
                    Vehicles.Unlock.UnlockAllVehicles()
                end
            end
            ImGui.End()
		end
	end)
end

return Vehicles:new()