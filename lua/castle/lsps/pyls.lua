local pylsp_conf = {
    cmd = { vim.fn.expand("$HOME/.local/share/nvim/mason/bin/pylsp") },
    filetypes = { "python" },
    root_markers = { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", "Pipfile", ".git" }
}

vim.lsp.config('python-lsp-server', pylsp_conf)
vim.lsp.enable('python-lsp-server')

