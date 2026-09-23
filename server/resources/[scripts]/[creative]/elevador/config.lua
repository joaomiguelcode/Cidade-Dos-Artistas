cfg = {}

--[[
    As coordenadas devem ser em vector3
    Acess é para dizer se o blip vai aparecer ou não;
    A permissão é por andar, por exemplo na policia, recrutas só podem acessar o 1º andar, altas pantentes podem ir até o resto;
    Você pode deixar sem permissão, assim qualquer um pode acessar, apenas definindo nil ou uma string vazia '';
    Também é possivel adicionar multiplas permissões, basta separar por virgula, exemplo: {"admin.permissao","admin.permissao2"};
    Name é o titulo do andar, cada andar pode ter um nome expecifico;
]]

cfg.elevadores = {
    ['HOSPITAL'] = {
        { coords = vector3(1850.29,3683.68,23.78), acess = true, name = 'Garagem', perm = nil },
        { coords = vector3(1850.34,3683.57,34.9), acess = true, name = 'Terreo', perm = nil },
        { coords = vector3(1850.25,3683.82,38.59), acess = true, name = 'Primeiro', perm = nil },
    },
    ['FEDERAL'] = { 
        { coords = vector3(2497.29,-349.14,94.1), acess = true, name = 'Primeiro', perm = nil }, 
        { coords = vector3(2497.08,-349.46,101.9), acess = true, name = 'Terceiro', perm = nil }, 
        { coords = vector3(2497.19,-349.37,105.7), acess = true, name = 'Quarto', perm = nil }, 
    },
    ['FEDERAL2'] = {
        { coords = vector3(2490.71,-393.43,87.72), acess = true, name = 'Subsolo', perm = nil }, 
        { coords = vector3(2504.28,-433.16,99.12), acess = true, name = 'Segundo', perm = nil }, 
        { coords = vector3(2504.48,-433.23,106.92), acess = true, name = 'Quarto', perm = nil }, 
    },
    ['FEDERAL3'] = {
        { coords = vector3(1927.94,3119.97,41.2), acess = true, name = 'Garagem', perm = nil },
        { coords = vector3(1949.04,3114.56,54.76), acess = true, name = 'Terreo', perm = nil }, 
        { coords = vector3(1947.55,3116.87,87.37), acess = true, name = 'Heliponto', perm = nil }, 
    },
    ['PC'] = {
        { coords = vector3(1157.68,3679.79,34.76), acess = true, name = 'Terreo', perm = nil }, 
        { coords = vector3(1160.64,3679.69,70.77), acess = true, name = 'Heliponto', perm = nil }, 
    },
    ['VANILLA'] = {
        { coords = vector3(130.04,-1284.35,-84.22), acess = true, name = 'Motel', perm = nil }, 
        { coords = vector3(113.74,-1294.33,29.27), acess = true, name = 'Vanilla', perm = nil }, 
    },
    ['PROTEGE'] = {
        { coords = vector3(-1363.89,-480.15,33.18), acess = true, name = 'Terreo', perm = nil }, 
        { coords = vector3(-1356.59,-485.43,84.45), acess = true, name = 'Heliponto', perm = nil }, 
    },
    ['LIFE'] = {
        { coords = vector3(-1077.92,-254.8,44.01), acess = true, name = 'Terreo', perm = nil }, 
        { coords = vector3(-1072.7,-246.6,54.0), acess = true, name = 'Heliponto', perm = nil }, 
    },
    ['RECEITA'] = {
        { coords = vector3(-1005.36,-423.83,33.26), acess = true, name = 'Garagem', perm = nil }, 
        { coords = vector3(-1025.09,-434.21,39.65), acess = true, name = 'Terreo', perm = nil }, 
        { coords = vector3(-1025.09,-434.37,50.89), acess = true, name = 'Primeiro', perm = nil }, 
        { coords = vector3(-1025.12,-434.3,58.33), acess = true, name = 'Segundo', perm = nil }, 
        { coords = vector3(-1009.34,-416.87,64.08), acess = true, name = 'Terceiro', perm = nil }, 
    },
    ['ROOFTOP1'] = {
        { coords = vector3(-600.79,-717.05,36.26), acess = true, name = 'Terreo', perm = nil }, 
        { coords = vector3(-600.83,-716.92,216.03), acess = true, name = '1', perm = nil }, 
    },
    ['ROOFTOP2'] = {
        { coords = vector3(-600.93,-713.97,36.26), acess = true, name = 'Terreo', perm = nil }, 
        { coords = vector3(-600.75,-713.8,216.03), acess = true, name = '1', perm = nil }, 
    },
    ['EXERCITO'] = {
        { coords = vector3(-2360.77,3249.30,32.81), acess = true, name = 'Terreo', perm = nil }, 
        { coords = vector3(-2360.75,3249.62,92.8), acess = true, name = '1', perm = nil }, 
    },
    ['CNN'] = {
        { coords = vector3(-577.97,-930.51,28.83), acess = true, name = 'Terreo', perm = nil }, 
        { coords = vector3(-569.27,-927.73,36.83), acess = true, name = 'Heliponto', perm = nil }, 
    },
    ['GUEDES'] = {
        { coords = vector3(-305.06,-720.85,28.02), acess = true, name = 'G', perm = nil }, 
        { coords = vector3(-287.97,-722.62,125.46), acess = true, name = '1', perm = nil }, 
    },
}
