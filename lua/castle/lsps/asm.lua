local asm_conf = {
    cmd = { "asm-lsp" },
    filetypes = { "asm", "vmasm" },
    root_markers = { ".asm-lsp.toml", ".git" }
}

vim.lsp.config('asm-lsp', asm_conf)
vim.lsp.enable('asm-lsp')

