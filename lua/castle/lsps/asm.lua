local asm_conf = {
    cmd = { vim.fn.expand("$HOME/.local/share/nvim/mason/bin/asm-lsp") },
    filetypes = { "asm", "vmasm" },
    root_markers = { ".asm-lsp.toml", ".git" }
}

vim.lsp.config('asm-lsp', asm_conf)
vim.lsp.enable('asm-lsp')

