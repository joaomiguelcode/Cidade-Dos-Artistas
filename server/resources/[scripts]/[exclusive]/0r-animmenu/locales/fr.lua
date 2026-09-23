-- fr French
local Translations = {
    menu = {
        title = "MENU D'ANIMATION",
        description = "ICI VOUS POUVEZ GÉRER TOUTES LES ANIMATIONS DU SERVEUR",
        exit = "Quitter"
    },
    notifications = {
        request_cancelled = "Demande annulée.",
        request_timed_out = "La demande a expiré.",
        no_players_nearby = "Aucun joueur à proximité.",
        no_emote_to_cancel = "Aucune émote à annuler.",
        quick_slot_empty = "Aucune animation trouvée dans l'emplacement %{slot}.",
        waiting_for_a_decision = "En attente d'une décision. Annuler",
        already_playing_anim = "Vous jouez déjà une animation.",
        walk_style_is_set_default = "Votre style de marche est défini par défaut."
    },
    categories = {
        all = "Tout",
        favorites = "Favoris",
        general = "Général",
        dances = "Danses",
        expressions = "Expressions",
        walks = "Marches",
        placedemotes = "Placés",
        syncedemotes = "Synchronisés",
        propemotes = "Accessoires"
    },
    keybinds = {
        toggle_point_description = "Active/Désactive Pointer",
        ragdoll_description = "Ragdoll",
        play_quick_emote = "Jouer une émote rapide"
    },
    animations = {
        smoke = "Appuyez sur ~y~G~w~ pour fumer.",
        vape = "Appuyez sur ~y~G~w~ pour vapoter.",
        cut = "Appuyez sur ~y~G~w~ pour couper.",
        makeitrain = "Appuyez sur ~y~G~w~ pour faire pleuvoir.",
        camera = "Appuyez sur ~y~G~w~ pour utiliser le flash de la caméra.",
        spraychamp = "Maintenez ~y~G~w~ pour pulvériser du champagne.",
        useleafblower = "Appuyez sur ~y~G~w~ pour utiliser le souffleur de feuilles.",
        poop = "Appuyez sur ~y~G~w~ pour déféquer.",
        puke = "Appuyez sur ~y~G~w~ pour vomir.",
        firework = "Appuyez sur ~y~G~w~ pour utiliser le feu d'artifice.",
        pee = "Maintenez ~y~G~w~ pour uriner."
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})