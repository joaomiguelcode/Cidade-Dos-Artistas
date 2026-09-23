coordsAttach = {
    ["carretinhajetski"] = {
        distance = 5.0,
        maxVehicle = 1, 
        class = {
            [14] = true
        }, -- Classes que são permitidas colocar no veiculo
        coords = { -- maxVehicle: Quantidade Maxima de Veiculos no Porta Malas
            [1] = vec3(0.0, 0.0, 0.0), 
        } 
    },
    ["carretinhacarro"] = {
        distance = 7.0,
        maxVehicle = 1, 
        class = {
            [0] = true,
            [1] = true,
            [2] = true,
            [3] = true,
            [4] = true,
            [5] = true,
            [6] = true,
            [7] = true,
            [9] = true,
            [11] = true,
            [12] = true,
            [17] = true,
            [18] = true,
            [19] = true,
            [20] = true,
        }, 
        coords = {
            [1] = vec3(0.0, -1.7, 0.6),
        } 
    },
    ["carretinham"] = {
        distance = 5.0,
        maxVehicle = 2, 
        class = {
            [8] = true
        },
        coords = {
            [1] = vec3(-0.3, -0.7, 0.1), -- Posicao x,y,z em que o Veiculo Ficara no Porta Malas
            [2] = vec3(0.3, -0.7, 0.1), 
        } 
    },
}

