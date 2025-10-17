local util = require("castle.util")
local root_files = { 'configure.ac', 'Makefile', 'Makefile.am', '*.mk' }

local autotoolsls_conf = {
    cmd = { vim.fn.expand("$HOME/.local/share/nvim/mason/bin/autotools-language-server") },
    filetypes = { "config", "automake", "make" },
    root_dir = function(bufnr, on_dir)
        local fname = vim.api.nvim_buf_get_name(bufnr)
        on_dir(util.root_pattern(unpack(root_files))(fname))
    end
}

vim.lsp.config('autotools-language-server', autotoolsls_conf)
vim.lsp.enable('autotools-language-server')

