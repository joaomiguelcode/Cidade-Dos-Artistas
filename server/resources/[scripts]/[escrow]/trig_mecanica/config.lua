useVehList = true -- Para evitar problemas de save

parts = {
    ---@param partName, initialPrice, incrementPrice
    [0] = {'Aerofólio',1000,50}, 
    [1] = {'Parachoque F',2000,0},
    [2] = {'Parachoque T',2000,0}, 
    [3] = {'Saias',5000,525}, 
    [4] = {'Escapamento',50,300}, 
    [5] = {'Rool-Cage',5000,525}, 
    [6] = {'Grade',5000,525}, 
    [7] = {'Capô',5000,525}, 
    [8] = {'Paralama',5000,525}, 
    [9] = {'Paralama-Direito',5000,525}, 
    [10] = {"Teto",2000,1000}, 
    [11] = {"Motor",10000,5000}, 
    [12] = {'Freio',8000,4000}, 
    [13] = {'Transmissao',8000,4000}, 
    [14] = {'Buzina',500,0}, 
    [15] = {'Suspensão',5000,1000}, 
    [16] = {'Blindagem',20000,8000}, 
    [18] = {'Turbo',20000,10000},  
    [23] = {'Rodas',2000,0},
    [24] = {'Traseira',0,0}, 
    [25] = {'PlacaPos',0,0}, 
    [29] = {'dashboard',0,0},
    [35] = {'Placa',2000,250}, 
    [36] = {'Som',2000,250}, 
    [46] = {'Vidro',1000,0}, 
    [48] = {'Decalque',1000,0},  
    [28] = {'Ornamentos',1000,0},
    [27] = {'Parabrisa',1000,0},
    [29] = {'Painel',1000,0},
    [30] = {'Relogio',1000,0},
    [32] = {'Bancos',1000,0},
    [33] = {'Volante',1000,0},
    [31] = {'Portas',1000,0},
    [42] = {'Forma',1000,0},
    [43] = {'Aerial',1000,0},
    [44] = {'Upper',1000,0},
    [45] = {'Tanque',1000,0},
    [46] = {'Janela',1000,0},
    [19] = {'Subwoofer',0,0},
    [49] = {'Lightbar'},
    [95] = {'CustomTyres'},
    [96] = {'Blindagem-Pneu'},
}


ColorPrices = {
    carColor = 250,
    smoke = 300,
    neon = 400,
    flashLightColor = 100,
    wheel = 150,
    pearly = 300
}

Premium = false -- Coloque true caso queira utilizar com ordem de serviço
BudgetDistance = 10 -- Caso use o sistema de orçamento, altera a area para limite para orçamento

UseArea = false
UseDistance = 15
Debug = true
MaxDiscount = 0.1 -- 10% do valor da ordem de serviço
AngularDetect = true -- Desative caso ja tenha um script de kit angulo
SoundEvent = 'sounds:Private' -- Evento de som
Commands = {
    panel = 'mecanicad', -- Painel de mecanico caso modo premium tiver ativada
    menu = 'mecanica' -- Abrir mecanica com prioridade fora de localizaçao
}

Markers = {
    id = 36,
    color = {
        255,255,255,50
    },
    scale = {
        1.0,1.3,1.0
    }
}

Dynamometers = {
    {
        coords = vec4(923.42,-926.82,43.05,0.0),
        platform = vec4(923.42,-926.82,43.05,0.0),
        -- prop = `mist_dyno`, -- Caso nao queira que spawne prop, apagar essa linha
        offsets = vec3(0.2,0.0,0.0),
    },
    {
        coords = vec4(2721.33,3488.4,55.65,337.33),
        platform = vec4(2721.33,3488.4,55.65,337.33),
        -- prop = `mist_dyno`, -- Caso nao queira que spawne prop, apagar essa linha
        offsets = vec3(0.2,0.0,0.0),
    },
    {
        coords = vec4(2713.79,3491.57,55.65,337.33),
        platform = vec4(2713.79,3491.57,55.65,337.33),
        -- prop = `mist_dyno`, -- Caso nao queira que spawne prop, apagar essa linha
        offsets = vec3(0.2,0.0,0.0),
    },
    {
        coords = vec4(2706.22,3494.75,55.65,337.33),
        platform = vec4(2706.22,3494.75,55.65,337.33),
        -- prop = `mist_dyno`, -- Caso nao queira que spawne prop, apagar essa linha
        offsets = vec3(0.2,0.0,0.0),
    },
}

ServerName = 'Cidade Dos Artistas'
Tunners = {
    {
        perm = {'Overspeed'},
        name = 'Overspeed',
        coords = vector3(912.7,-919.17,43.34),
        hiddenParts = {},
    },
    {
        perm = {'Overspeed'},
        name = 'Overspeed',
        coords = vector3(903.38,-940.93,43.12),
        hiddenParts = {},
    },
    {
        perm = {'Overspeed'},
        name = 'Overspeed',
        coords = vector3(946.2,-981.19,42.75),
        hiddenParts = {},
    },
    {
        perm = {'Overspeed'},
        name = 'Overspeed',
        coords = vector3(935.35,-981.23,42.75),
        hiddenParts = {},
    },
    {
        perm = {'Overspeed'},
        name = 'Overspeed',
        coords = vector3(925.19,-981.2,42.76),
        hiddenParts = {},
    },
    {
        perm = {'Overspeed'},
        name = 'Overspeed',
        coords = vector3(914.76,-980.92,42.76),
        hiddenParts = {},
    },
    {
        perm = {'Overspeed'},
        name = 'Overspeed',
        coords = vector3(903.12,-971.94,42.76),
        hiddenParts = {},
    },
    {
        perm = {'Overspeed'},
        name = 'Overspeed',
        coords = vector3(902.91,-961.62,42.76),
        hiddenParts = {},
    },
    {
        perm = {'Overspeed'},
        name = 'Overspeed',
        coords = vector3(902.81,-951.2,42.76),
        hiddenParts = {},
    },
    {
        perm = {'Overspeed'},
        name = 'Overspeed',
        coords = vector3(903.39,-930.42,42.76),
        hiddenParts = {},
    },
    {
        perm = {'Overspeed'},
        name = 'Overspeed',
        coords = vector3(902.93,-919.68,42.76),
        hiddenParts = {},
    }, 
    {
        perm = {'Overspeed'},
        name = 'Overspeed',
        coords = vector3(937.55,-972.4,59.11),
        hiddenParts = {},
    }, 
    {
        perm = {'Overspeed'},
        name = 'Overspeed',
        coords = vector3(955.39,-972.19,59.11),
        hiddenParts = {},
    },     
    { 
        perm = {'Autosport'},
        name = 'Autosport',
        coords = vector3(2723.42,3467.32,55.39),
        hiddenParts = {},
    },
    { 
        perm = {'Autosport'},
        name = 'Autosport',
        coords = vector3(2715.68,3470.38,55.39),
        hiddenParts = {},
    },
    { 
        perm = {'Autosport'},
        name = 'Autosport',
        coords = vector3(2708.31,3473.65,55.39),
        hiddenParts = {},
    },
    { 
        perm = {'Autosport'},
        name = 'Autosport',
        coords = vector3(2700.97,3476.67,55.39),
        hiddenParts = {},
    },
    { 
        perm = {'Autosport'},
        name = 'Autosport',
        coords = vector3(2693.71,3480.16,55.40),
        hiddenParts = {},
    },
    { 
        perm = {'Autosport'},
        name = 'Autosport',
        coords = vector3(2685.88,3483.41,55.39),
        hiddenParts = {},
    },
    { 
        perm = {'Autosport'},
        name = 'Autosport',
        coords = vector3(2678.55,3486.32,55.39),
        hiddenParts = {},
    },
    { 
        perm = {'Autosport'},
        name = 'Autosport',
        coords = vector3(2744.46,3500.62,55.52),
        hiddenParts = {},
    },
    { 
        perm = {'Autosport'},
        name = 'Autosport',
        coords = vector3(2736.44,3503.61,55.52),
        hiddenParts = {},
    },
    { 
        perm = {'Autosport'},
        name = 'Autosport',
        coords = vector3(2728.71,3506.64,55.52),
        hiddenParts = {},
    },
    { 
        perm = {'Autosport'},
        name = 'Autosport',
        coords = vector3(2721.00,3508.82,55.33),
        hiddenParts = {},
    },
    { 
        perm = {'Autosport'},
        name = 'Autosport',
        coords = vector3(2714.51,3511.40,55.33),
        hiddenParts = {},
    },
    { 
        perm = {'Autosport'},
        name = 'Autosport',
        coords = vector3(2708.08,3514.15,55.33),
        hiddenParts = {},
    },
    { 
        perm = {'Autosport'},
        name = 'Autosport',
        coords = vector3(2702.08,3516.55,55.33),
        hiddenParts = {},
    },
    { 
        perm = {'Autosport'},
        name = 'Autosport',
        coords = vector3(2696.85,3519.09,55.33),
        hiddenParts = {},
    },
    { 
        perm = {'Autosport'},
        name = 'Autosport',
        coords = vector3(2691.42,3520.63,55.33),
        hiddenParts = {},
    },    
    { 
        perm = {'Autosport'},
        name = 'Autosport',
        coords = vector3(2703.47,3468.61,64.33),
        hiddenParts = {},
    },    
}

functions = {
    [46] = SetVehicleWindowTint,
    [35] = SetVehicleNumberPlateTextIndex,
    [18] = ToggleVehicleMod,
}

carParts = {
    [0] = {
        {
            itemIndex = 98,
            itemName = 'reparar',
            itemSize = 'large',
            cam = 'none',
            installed = false,
            itemOptions = {
                {
                    name = 'Lavar',
                    price = 50,
                    purchased = false
                },
                {
                    name = 'Motor',
                    price = 100,
                    purchased = false
                },
                {
                    name = 'Revisão completa',
                    price = 180,
                    purchased = false
                },
            },
        },
    },
    [1] = {
        {
            itemIndex = 46,
            itemName = 'janelas',
            itemSize = 'small',
            cam = 'vidro',
            installed = false,
            itemOptions = {
               --[[  {
                    name = 'janela 1',
                    price = '1222',
                    purchased = false
                },
                {
                    name = 'janela 2',
                    price = '2',
                    purchased = true
                }, ]]
            },
        },
        {
            itemIndex = 11,
            itemName = 'motor',
            cam = 'capô',
            itemSize = 'large',
            installed = false,
            itemOptions = {
                --[[ {
                    name = 'dada',
                    price = '2',
                    purchased = false
                } ]]
            }
        },
    },
    [2] = {
        {
            itemName = 'parachoque',
            itemSize = 'medium',
            installed = false,
            itemOptions = {
              --[[   {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
            },
            subCategories = {
                {
                    itemIndex = 1,
                    itemName = 'frontal',
                    cam = 'parachoque-dianteiro',
                    itemOptions = {
                     --[[    {
                            name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        }, ]]
                    },
                    itemSize ='small'
                },
                {
                    itemIndex = 2,
                    itemName = 'traseiro',
                    cam = 'parachoque-traseiro',
                    itemSize ='medium',
                    itemOptions = {
                       --[[  {
                            name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        }, ]]
                    },
                },
            }
        },
        {
            itemIndex = 12,
            itemName = 'freios',
            cam ='traseira',
            itemSize = 'medium',
            installed = false,
            itemOptions = {
               --[[  {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
    }, 
    [3] = {
        {
            itemIndex = 14,
            itemName = 'buzinas',
            itemSize = 'small',
            cam= 'none',
            installed = false,
            itemOptions = {
               --[[  {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
        {
            itemIndex = 6,
            itemName = 'grades',
            cam = 'grelha',
            itemSize = 'medium',
            installed = false,
            itemOptions = {
               --[[  {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
        {
            itemName = 'rodas',
            itemSize = 'small',
            cam = 'traseira',
            installed = false,
            frontDisplacement = 0.1,
            frontRotation = 0.3,
            rearDisplacement = 0.5,
            rearRotation = 0.7,
            subCategories = {
                {
                    itemIndex = 23,
                    itemName = 'tipo',
                    cam = 'traseira',
                   --[[  itemOptions = { ]]
                       --[[  {
                            name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        }, ]]
                    --[[ }, ]]
                    itemSize ='small'
                },
                {
                    itemName = 'cor',
                    itemIndex = 99,
                    cam = 'traseira',
                    colorPresets = {'#FFFF', '#3FFF', 'blue'},
                    itemSize ='small'
                },
                {
                    itemName = 'acessórios',
                    itemSize ='small',
                    cam = 'traseira',
                    subCategories = {
                        {
                            itemIndex = 95,
                            itemName = 'Custom',
                            cam = 'traseira',
                            itemOptions = {
                                {
                                    name = 'Original',
                                    price = 0,
                                },
                                {
                                    name = 'Custom',
                                    price = 100,
                                },
                               
                            },
                            itemSize ='small'
                        },
                        {
                            itemIndex = 96,
                            itemName = 'Fumaça',
                            cam = 'traseira',
                            itemSize ='small',
                            itemOptions = {
                                {
                                    name = 'sport',
                                    price = 100,
                                },
                            },
                        },
                    }
                },
                 
                {
                    itemName = 'modificações',
                    itemOptions = {},
                    itemSize ='small'
                },
            }
            
        },
    },
    [4] = {
        {
            itemName = 'cores',
            itemSize = 'small',
            installed = false,
            itemIndex = 200,
            primaryColor = '#FFFFFF',
            secondaryColor = '#FFFFFF',
            selectedColorType = '',
            pearlyColor = ''
            
        },
        {
            itemIndex = 15,
            itemName = 'suspensao',
            cam = 'traseira',
            itemSize = 'large',
            installed = false,
            
            itemOptions = {
               --[[  {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
    },
    [5] = {
        {
            itemIndex = 0,
            itemName = 'aerofolios',
            itemSize = 'large',
            cam = 'aerofólio',
            installed = false,
            itemOptions = {
                --[[ {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
        {
            itemIndex = 24,
            itemName = 'traseira',
            itemSize = 'small',
            installed = false,
            itemOptions = {
               --[[  {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
    },
    [6] = {
        {
            itemIndex = 3,
            itemName = 'saias',
            itemSize = 'medium',
            cam = 'saias',
            installed = false,
            itemOptions = {
                --[[ {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
        {
            itemIndex = 4,
            itemName = 'escapamentos',
            itemSize = 'large',
            cam = 'escapamento',
            installed = false,
            itemOptions = {
               --[[  {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
    },
    [7] = {
        {
            itemIndex = 48,
            itemName = 'decalques',
            itemSize = 'medium',
            installed = false,
            itemOptions = {
                --[[ {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
       
        {
            itemName = 'neons',
            itemSize = 'large',
            installed = false,
            --[[ itemOptions = {
                {
                    name = 'Kit Neon',
                    price = 10,
                    purchased = false
                },
                {
                    name = 'Cor',
                    price = 10,
                    purchased = false
                },
            } ]]
            subCategories = {
                {
                    itemIndex = 100,
                    cam = 'neon',
                    itemName = 'KitNeon',
                    itemOptions = {
                        {
                            name = 'Original',
                            price = 100,
                        },
                        {
                            name = 'Neon',
                            price = 100,
                        },
                        
                    },
                    itemSize ='small'
                },
                {
                    itemIndex = 101,
                    cam = 'neon',
                    itemName = 'NeonColor',
                    itemOptions = {
                        {
                            name = 'Neon',
                            price = 100,
                        },
                        
                    },
                    itemSize ='small'
                },
            }

        },
        {
            itemName = 'farol',
            itemSize = 'medium',
            cam = 'farol',
            installed = false,
           --[[  itemOptions = {
                {
                    name = '',
                    price = '',
                    purchased = false
                }
             } ]]

            subCategories = {
                {
                    itemIndex = 42,
                    cam = 'farol',
                    itemName = 'Forma',
                    itemOptions = {
                       --[[  {
                            name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        },  ]]
                    },
                    itemSize ='small'
                },
                {
                    itemIndex = 22,
                    cam = 'faroltype',
                    itemName = 'Farol',
                    cam = 'farol',
                    itemOptions = {
                        {
                            name = 'Normal',
                            price = 0,
                        },
                        {
                            name = 'Xenon',
                            price = 200,
                        },
                        
                    },
                    itemSize ='small'
                },
                {
                    itemIndex = 9999,
                    cam = 'faroltype',
                    cam = 'farol',
                    itemName = 'Cor',
                    itemOptions = {
                      --[[   {
                            name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        },  ]]
                    },
                    itemSize ='small'
                },
            },
        },
    },
    [8] = {
        {
            itemIndex = 8,
            itemName = 'paralamas',
            itemSize = 'large',
            installed = false,
            cam = 'para-lama',
            itemOptions = {
               --[[  {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
        {
            itemIndex = 9,
            itemName = 'paralamas-extras',
            itemSize = 'large',
            installed = false,
            cam = 'para-lama',
            itemOptions = {
               --[[  {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
        {
            itemIndex = 7,
            itemName = 'capo',
            itemSize = 'small',
            cam = 'capô',
            installed = false,
            itemOptions = {
                --[[ {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
        
    },
    [9] = {
        {
            itemIndex = 13,
            itemName = 'transmissao',
            itemSize = 'large',
            cam = 'capô',
            installed = false,
            itemOptions = {
               --[[  {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
        {
            itemIndex = 18,
            itemName = 'turbo',
            itemSize = 'medium',
            cam = 'capô',
            installed = false,
            itemOptions = {
               --[[  {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
    },
    [10] = {
        {
            itemIndex = 16,
            itemName = 'blindagem',
            itemSize = 'small',
            cam = 'none',
            installed = false,
            itemOptions = {
              --[[   {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
        {
            itemIndex = 5,
            itemName = 'gaiola',
            itemSize = 'small',
            cam = 'roll-cage',
            installed = false,
            itemOptions = {
                --[[ {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
        {
            itemIndex = 10,
            itemName = 'Teto',
            itemSize = 'small',
            cam = 'teto',
            installed = false,
            itemOptions = {
                --[[ {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
            }
        },
    },
    [11] = {
        {
            itemName = 'interior',
            itemSize = 'medium',
         
            installed = false,
            itemOptions = {
              --[[   {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
            },
            subCategories = {
                {
                    itemIndex = 27,
                    cam = 'interior',
                    itemName = 'Parabrisa',
                    itemOptions = {
                     --[[    {
                            name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        },  ]]
                    },
                    itemSize ='small'
                },
                {
                    itemIndex = 28,
                    cam = 'interior',
                    itemName = 'Ornamentos',
                    itemOptions = {
                       --[[  {
                            name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        },  ]]
                    },
                    itemSize ='small'
                },
                {
                    itemIndex = 29,
                    itemName = 'Painel',
                    cam = 'interior',
                    itemOptions = {
                       --[[  {
                            name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        },  ]]
                    },
                    itemSize ='small'
                },
                {
                    itemIndex = 30,
                    itemName = 'Relógio',
                    
                    cam = 'interior',
                    itemOptions = {
                      --[[  {
                             name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        },  ]]
                    },
                    itemSize ='small'
                },
                {
                    itemIndex = 32,
                    itemName = 'Bancos',
                    cam = 'interior',
                    itemOptions = {
                       --[[  {
                            name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        },  ]]
                    },
                    itemSize ='small'
                },
                {
                    itemIndex = 33,
                    itemName = 'Volante',
                    cam = 'interior',
                    itemOptions = {
                       --[[  {
                            name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        },  ]]
                    },
                    itemSize ='small'
                },
                {
                    itemIndex = 31,
                    itemName = 'Portas',
                    cam = 'doors',
                    itemOptions = {
                        --[[ {
                            name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        },  ]]
                    },
                    itemSize ='small'
                },
                {
                    itemIndex = 36,
                    itemName = 'Som',
                    cam = 'doors',
                    itemOptions = {
                        --[[ {
                            name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        },  ]]
                    },
                    itemSize ='small'
                },
                
            }
        },
        {
            itemIndex = 43,
            itemName = 'aerial',
            itemSize = 'medium',
            cam = 'capô',
            installed = false,
            itemOptions = {
                --[[ {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
        {
            itemIndex = 97,
            itemName = 'extra',
            itemSize = 'medium',
            cam = 'teto',
            installed = false,
            itemOptions = {
                {
                    name = 'Extra 1',
                    price = 1,
                    purchased = false
                },
                {
                    name = 'Extra 2',
                    price = 1,
                    purchased = false
                },
                {
                    name = 'Extra 3',
                    price = 1,
                    purchased = false
                },
                {
                    name = 'Extra 4',
                    price = 1,
                    purchased = false
                },
                {
                    name = 'Extra 5',
                    price = 1,
                    purchased = false
                },
                {
                    name = 'Extra 6',
                    price = 1,
                    purchased = false
                },
                {
                    name = 'Extra 7',
                    price = 1,
                    purchased = false
                },
                {
                    name = 'Extra 8',
                    price = 1,
                    purchased = false
                },
                {
                    name = 'Extra 9',
                    price = 1,
                    purchased = false
                },
             }
        },
        {
            itemName = 'acessórios',
            itemSize = 'medium',
            installed = false,
            itemOptions = {
               
            }
        },
        {
            itemName = 'chassi',
            itemSize = 'medium',
            installed = false,
            itemOptions = {
                {
                    name = '',
                    price = '',
                    purchased = false
                }
            }
        },
    },
    [12] = {
        {
            itemName = 'Placa',
            itemSize = 'medium',
            installed = false,
            itemOptions = {
                --[[   {
                      name = '',
                      price = '',
                      purchased = false
                  } ]]
            },
            subCategories = {
                {
                    itemIndex = 35,
                    cam = 'placa',
                    itemName = 'Placa',
                    itemSize = 'medium',
                    installed = false,
                    itemOptions = {
                        --[[   {
                            name = 'das',
                            price = '3242',
                            purchased = false
                        } ]]
                    }
                },
                {
                    itemIndex = 25,
                    cam = 'placa',
                    itemName = 'Posicao',
                    itemSize = 'medium',
                    installed = false,
                    itemOptions = {
                      --[[   {
                            name = 'das',
                            price = '3242',
                            purchased = false
                        } ]]
                    }
                    
                },
            }
        },
        {
            itemIndex = 44,
            cam = 'teto',
            itemName = 'Upper',
            itemSize = 'medium',
            installed = false,
            itemOptions = {
              --[[   {
                    name = 'das',
                    price = '3242',
                    purchased = false
                } ]]
            }
        },
        {
            itemIndex = 45,
            cam = 'saias',
            itemName = 'tanque',
            itemSize = 'medium',
            installed = false,
            itemOptions = {
              --[[   {
                    name = 'das',
                    price = '3242',
                    purchased = false
                } ]]
            }
        },
       
        
       --[[  {
            itemIndex = 19,
            itemName = 'Subwoofer',
            itemSize = 'medium',
            installed = false,
            itemOptions = {
              
            }
        }, ]]
      --[[   {
            itemIndex = 49,
            itemName = 'Lightbar',
            itemSize = 'medium',
            installed = false,
            itemOptions = {
                 {
                    name = 'das',
                    price = '3242',
                    purchased = false
                } 
            }
        }, ]]
    },
}

