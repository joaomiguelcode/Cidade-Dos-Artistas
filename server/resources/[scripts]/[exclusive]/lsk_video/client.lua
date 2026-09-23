RegisterNetEvent("video:toggleNUI")
AddEventHandler("video:toggleNUI", function(display)
    SendNUIMessage({
    type = "ui",
    display = display
  })
end)