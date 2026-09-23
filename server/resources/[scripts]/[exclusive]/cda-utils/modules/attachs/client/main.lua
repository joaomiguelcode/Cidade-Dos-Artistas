local attachsAplied = {}

exports("applyAttachs", function(weapon)
    weapon = GetHashKey(weapon)
	if not attachsAplied[weapon] then return end
    local ped = PlayerPedId()
    for k,v in pairs(attachsAplied[weapon]) do
        GiveWeaponComponentToPed(ped, weapon, k)
    end
end)

RegisterCommand('attachs', function()
    if not LocalPlayer["state"]["Police"] then return end
    local ped = PlayerPedId()
    local weapon = GetSelectedPedWeapon(ped)

    local components = Attachs[weapon]
    if not Attachs[weapon] then
        print("Arma Invalida")
        return
    end
    
    local mainOptions = {}
    for category, options in pairs(components) do
        table.insert(mainOptions, {
            title = category,
            description = 'Escolher variação de ' .. category,
            onSelect = function()
                openSubMenu(category, weapon, options)
            end
        })
    end
    
    lib.registerContext({
        id = 'main_attachs_menu',
        title = 'Gerenciar Attachs',
        options = mainOptions
    })

    lib.showContext('main_attachs_menu')
end)

function openSubMenu(category, weapon, options)
    local ped = PlayerPedId()
    local subOptions = {}

    for i=1, #options do
        local title
        local description
        if i > 1 then
            title = category .. ' #' .. i - 1
            description = 'Equipar ' .. category .. ' ' .. i - 1
        else
            title = "Remover Tudo"
            description = "Remove Todos os "..category
        end
        table.insert(subOptions, {
            title = title,
            description = description,
            onSelect = function()
                if not attachsAplied[weapon] then
                    attachsAplied[weapon] = {}
                end
                -- Remove todos os componentes desta categoria antes
                for _, comp in pairs(options) do
                    if HasPedGotWeaponComponent(ped, weapon, GetHashKey(comp)) then
                        RemoveWeaponComponentFromPed(ped, weapon, GetHashKey(comp))
                        attachsAplied[weapon][comp] = false
                    end
                end

                -- Adiciona o selecionado
                if i > 1 then
                    GiveWeaponComponentToPed(ped, weapon, GetHashKey(options[i]))
                    attachsAplied[weapon][options[i]] = true
                end

                -- 🔑 Reabrir o mesmo submenu para não fechar
                lib.showContext('submenu_' .. category)
            end
        })
    end

    lib.registerContext({
        id = 'submenu_' .. category,
        title = 'Escolha ' .. category,
        menu = 'main_attachs_menu',
        options = subOptions
    })

    lib.showContext('submenu_' .. category)
end