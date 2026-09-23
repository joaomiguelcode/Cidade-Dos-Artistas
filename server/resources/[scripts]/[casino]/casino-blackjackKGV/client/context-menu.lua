RegisterNetEvent('casino:context:hit&stand', function() 
    lib.showMenu('hit&stand')
end)

RegisterNetEvent('casino:context:hit&doubledown', function() 
    lib.showMenu('hit&doubledown')
end)

RegisterNetEvent('casino:context:hit&split', function()
    lib.showMenu('hit&split')
end)


lib.registerMenu({
    id = 'hit&stand',
    title = 'Cassino CDA | Blackjack',
    position = 'top-right',
    options = {
        {label = 'Pedir Carta', description = 'Puxe outra carta', args = {event = "ry::client:blackjackMenu", number = 1 } },
        {label = 'Manter', description = 'Ficar na mão', args = {event = "ry::client:blackjackMenu", number = 2 } },
    }
}, function(selected, scrollIndex, args)
    TriggerEvent(args.event,args.number)
end)

lib.registerMenu({
    id = 'hit&doubledown',
    title = 'Cassino CDA | Blackjack',
    position = 'top-right',
    options = {
        {label = 'Pedir Carta', description = 'Puxe outra carta', args = {event = "ry::client:blackjackMenu", number = 1 } },
        {label = 'Manter', description = 'Ficar na mão', args = {event = "ry::client:blackjackMenu", number = 2 } },
        {label = 'Dobrar Aposta Inicial', description = 'Arrisque e dobre sua aposta', args = {event = "ry::client:blackjackMenu", number = 3 } },
    }
}, function(selected, scrollIndex, args)
    TriggerEvent(args.event,args.number)
end)

lib.registerMenu({
    id = 'hit&split',
    title = 'Cassino CDA | Blackjack',
    position = 'top-right',
    options = {
        {label = 'Pedir Carta', description = 'Puxe outra carta', args = {event = "ry::client:blackjackMenu", number = 1 } },
        {label = 'Manter', description = 'Ficar na mão', args = {event = "ry::client:blackjackMenu", number = 2 } },
        {label = 'Dividir', description = 'Divida sua mão', args = {event = "ry::client:blackjackMenu", number = 4 } },
    }
}, function(selected, scrollIndex, args)
    TriggerEvent(args.event,args.number)
end)
