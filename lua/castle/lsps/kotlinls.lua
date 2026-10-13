local kotlinls_conf = {
    -- Using system lsp since mason was having issues downloading the recent version
    cmd = { "kotlin-lsp", "--stdio" },
    filetypes = { "kotlin" },
    root_markers = { "settings.gradle", "settings.gradle.kts", "pom.xml", "build.gradle", "build.gradle.kts", "workspace.json" }
}

vim.lsp.config('kotlin-lsp', kotlinls_conf)
vim.lsp.enable('kotlin-lsp')

