local htmlls_conf = {
    cmd = { vim.fn.expand("$HOME/.local/share/nvim/mason/bin/vscode-html-language-server"), "--stdio" },
    filetypes = { "html", "templ" },
    init_options = {
        configurationSection = { "html", "css", "javascript" },
        embeddedLanguages = {
            css = true,
            javascript = true
        },
        provideFormatter = true
    },
    root_markers = { "package.json", ".git" },
    settings = {}
}

vim.lsp.config('html-lsp', htmlls_conf)
vim.lsp.enable('html-lsp')

