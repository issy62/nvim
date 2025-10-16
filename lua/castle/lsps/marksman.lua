local md_conf = {
    cmd = { "marksman", "server" },
    filetypes = { "markdown", "markdown.mdx" },
    root_markers = { ".marksman.toml", ".git" }
}

vim.lsp.config('marksman', md_conf)
vim.lsp.enable('marksman')

