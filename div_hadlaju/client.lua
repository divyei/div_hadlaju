local function kiraMaxspeed(maxSpeed)
    speed = maxSpeed / 3.6 
    return speed
end

local function RunSpeedLimit()
    CreateThread(function()
        while true do
            Wait(100)
            local vehicle = cache.vehicle
            local maxSpeed = kiraMaxspeed(250) -- max speed 250
            SetVehicleMaxSpeed(vehicle, maxSpeed)
            if not cache.vehicle then
                break
            end
        end
    end)        
end

lib.onCache('seat', function(value)
    if value == -1 then
        RunSpeedLimit()
    end
end)
