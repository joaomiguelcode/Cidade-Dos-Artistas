-- English
local Translations = {
    menu = {
        title = "MENU DE ANIMAÇÃO",
        description = "AQUI VOCÊ PODE GERENCIAR TODAS AS ANIMAÇÕES DO SERVIDOR",
        exit = "Sair"
    },
    notifications = {
        request_cancelled = "Solicitação cancelada.",
        request_timed_out = "Tempo de solicitação esgotado.",
        no_players_nearby = "Nenhum jogador próximo.",
        no_emote_to_cancel = "Nenhuma animação para cancelar.",
        quick_slot_empty = "Nenhuma animação encontrada no slot %{slot}.",
        waiting_for_a_decision = "Aguardando uma decisão. Cancelar",
        already_playing_anim = "Você já está executando uma animação.",
        walk_style_is_set_default = "Seu estilo de caminhada está definido como padrão.",
        just_animals = "Apenas personagens animais podem usar esta animação."
    },
    categories = {
        all = "Todos",
        favorites = "Favoritos",
        general = "Geral",
        dances = "Dançar",
        expressions = "Expressões",
        walks = "Caminhadas",
        placedemotes = "Posicionadas",
        syncedemotes = "Sincronizadas",
        propemotes = "Acessórios",
        erpemotes = "ERP",
        animalemotes = "Animais"
    },
    keybinds = {
        toggle_point_description = "Ativar/desativar apontar",
        ragdoll_description = "Boneco de pano",
        play_quick_emote = "Executar animação rápida"
    },
    animations = {
        smoke = "Pressione ~y~G~w~ para fumar.",
        vape = "Pressione ~y~G~w~ para vaporizar.",
        cut = "Pressione ~y~G~w~ para cortar",
        makeitrain = "Pressione ~y~G~w~ para fazer chover dinheiro.",
        camera = "Pressione ~y~G~w~ para usar o flash da câmera.",
        spraychamp = "Segure ~y~G~w~ para borrifar champanhe",
        useleafblower = "Pressione ~y~G~w~ para usar o soprador de folhas.",
        poop = "Pressione ~y~G~w~ para defecar",
        puke = "Pressione ~y~G~w~ para vomitar",
        firework = "Pressione ~y~G~w~ para soltar fogos de artifício",
        pee = "Segure ~y~G~w~ para urinar."
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})