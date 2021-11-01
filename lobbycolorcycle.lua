local js = panorama.open()
local enable = ui.new_checkbox("Misc", "Miscellaneous", "Rainbow lobby")
local speed = ui.new_slider("Misc", "Miscellaneous", "Switch speed", 1, 100)

client.set_event_callback("paint_ui",  function()
    local newtime = string.format("%.0f",globals.realtime() % 60 * ui.get(speed)/5)
    if ui.get(enable) and newtime ~= oldtime then
        js.LobbyAPI.ChangeTeammateColor()
        oldtime = newtime
    end
end)
