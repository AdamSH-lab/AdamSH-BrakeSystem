--[coded By AdamSH]--
--[do now reupload without my perm]
CreateThread(function()
    while true do
        local ped = PlayerPedId()
        Wait(0)
        if IsPedInAnyVehicle(ped, false) then
            if IsControlJustReleased(1, 19) then  --[ניתן לשנות את כפתור הבלימה על ידי שינוי המספר 19]--
                BringVehicleToHalt(GetVehiclePedIsUsing(ped), 10.0, 1, true)
                SetVehicleUndriveable(GetVehiclePedIsUsing(ped), true)
                TriggerEvent("chatMessage", "^1 !!בלימת חירום הופעלה")
                Wait(3000)
                TriggerEvent("chatMessage", "^1 ...מערכות הרכב מושבתות ל20 שניות אנא המתן")
                Wait(20000) --[<= ניתן לשנות את זמן השבתת הרכב על ידי שינוי הזמן פה]--
                TriggerEvent("chatMessage", "^2!מערכות הרכב עובדות,הרכב מוכן לנסיעה")
                SetVehicleUndriveable(GetVehiclePedIsUsing(ped), false)
            end
        end
    end
end)

   