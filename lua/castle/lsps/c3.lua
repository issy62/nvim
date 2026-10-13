local c3_conf = {
    cmd = { "c3lsp" },
    filetypes = { "c3" },
    root_markers = { 'project.json', 'manifest.json', '.git' }
}

vim.lsp.config('c3-lsp', c3_conf)
vim.lsp.enable('c3-lsp')
