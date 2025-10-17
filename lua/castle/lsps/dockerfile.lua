local docker_conf = {
    cmd = { vim.fn.expand("$HOME/.local/share/nvim/mason/bin/docker-langserver"), "--stdio" },
    filetypes = { "dockerfile" },
    root_markers = { "Dockerfile" }
}

vim.lsp.config('dockerfile-language-server', docker_conf)
vim.lsp.enable('dockerfile-language-server')

