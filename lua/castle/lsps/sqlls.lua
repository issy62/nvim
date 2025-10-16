local sqlls_conf = {
    cmd = { "sql-language-server", "up", "--method", "stdio" },
    filetypes = { "sql", "mysql" },
    root_markers = { ".sqllsrc.json" },
    settings = {}
}

vim.lsp.config('sqlls', sqlls_conf)
vim.lsp.enable('sqlls')

