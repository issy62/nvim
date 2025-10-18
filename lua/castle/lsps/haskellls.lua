local util = require("castle.util")

local haskellls_conf = {
    cmd = { vim.fn.expand("$HOME/.local/share/nvim/mason/bin/haskell-language-server-wrapper"), "--lsp" },
    filetypes = { "haskell", "lhaskell" },
    root_dir = function(bufnr, on_dir)
        local fname = vim.api.nvim_buf_get_name(bufnr)
        on_dir(util.root_pattern('hie.yaml', 'stack.yaml', 'cabal.project', '*.cabal', 'package.yaml')(fname))
    end,
    settings = {
        haskell = {
            cabalFormattingProvider = "cabalfmt",
            formattingProvider = "ormolu",
        }
    }
}

vim.lsp.config('haskell-language-server', haskellls_conf)
vim.lsp.enable('haskell-language-server')

