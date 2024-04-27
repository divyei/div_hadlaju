local function kiraMaxspeed(maxSpeed)
    speed = maxSpeed / 3.6 
    return speed
end

local function RunSpeedLimit()
    CreateThread(function()
        while true do
            Wait(100)
            local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
            local maxSpeed = kiraMaxspeed(250) -- max speed 250
            SetVehicleMaxSpeed(vehicle, maxSpeed)
            if not IsPedSittingInAnyVehicle(PlayerPedId()) then
                break
            end
        end
    end)        
end

lib.onCache('vehicle', RunSpeedLimit)