local json_conf = {
    cmd = { vim.fn.expand("$HOME/.local/share/nvim/mason/bin/vscode-json-language-server"), "--stdio" },
    filetypes = { "json", "jsonc" },
    init_options = {
        provideFormatter = true
    },
    root_markers = { ".git" }
}

vim.lsp.config('json-lsp', json_conf)
vim.lsp.enable('json-lsp')

