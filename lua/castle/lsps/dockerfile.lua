local docker_conf = {
    cmd = { "docker-langserver", "--stdio" },
    filetypes = { "dockerfile" },
    root_markers = { "Dockerfile" }
}

vim.lsp.config('dockerfile-language-server', docker_conf)
vim.lsp.enable('dockerfile-language-server')

