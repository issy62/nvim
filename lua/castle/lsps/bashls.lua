local bashls_conf = {
    cmd = { vim.fn.expand("$HOME/.local/share/nvim/mason/bin/bash-language-server"), "start" },
    filetypes = { "bash", "sh", "zsh" },
    root_markers = { ".git" },
    settings = {
        bashIde = {
            globPattern = "*@(.sh|.inc|.bash|.command|.zsh|.zsh-theme)"
        }
    }
}

vim.lsp.config('bash-language-server', bashls_conf)
vim.lsp.enable('bash-language-server')

