require("castle.options")
require("castle.keymaps")
require("castle.autocmds")
require("castle.lsp")

function R(name)
    require("plenary.reload").reload_module(name)
end

