local md_conf = {
    cmd = { vim.fn.expand("$HOME/.local/share/nvim/mason/bin/marksman"), "server" },
    filetypes = { "markdown", "markdown.mdx" },
    root_markers = { ".marksman.toml", ".git" }
}

vim.lsp.config('marksman', md_conf)
vim.lsp.enable('marksman')

