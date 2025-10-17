local util = require("castle.util")
local odinls_conf = {
    cmd = { vim.fn.expand("$HOME/.local/share/nvim/mason/bin/ols") },
    filetypes = { "odin" },
    root_dir = function(bufnr, on_dir)
        local fname = vim.api.nvim_buf_get_name(bufnr)
        on_dir(util.root_pattern('ols.json', '.git', '*.odin')(fname))
    end
}

vim.lsp.config("ols", odinls_conf)
vim.lsp.enable("ols")

