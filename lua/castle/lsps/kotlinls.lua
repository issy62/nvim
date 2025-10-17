local kotlinls_conf = {
    cmd = { vim.fn.expand("$HOME/.local/share/nvim/mason/bin/kotlin-lsp"), "--stdio" },
    filetypes = { "kotlin" },
    root_markers = { "settings.gradle", "settings.gradle.kts", "pom.xml", "build.gradle", "build.gradle.kts", "workspace.json" }
}

vim.lsp.config('kotlin-lsp', kotlinls_conf)
vim.lsp.enable('kotlin-lsp')

