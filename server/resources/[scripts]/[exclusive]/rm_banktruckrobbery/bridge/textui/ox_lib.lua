if cfg.textUI ~= 'ox_lib' then return end

textUI = {}

textUI.show = function(text, options)
    if not options then options = {} end
    options.position = 'left-center'
    lib.showTextUI(text, options)
end

textUI.hide = function()
    lib.hideTextUI()
end
