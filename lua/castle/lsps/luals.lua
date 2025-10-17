local lusls_conf = {
    cmd = { vim.fn.expand("$HOME/.local/share/nvim/mason/bin/lua-language-server") },
    filetypes = { "lua" },
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true)
            },
            diagnostics = {
                globals = { 'vim', 'require' },
            }
        },
    },
    root_markers = { ".luarc.json", ".luarc.jsonc", ".luacheckrc", ".stylua.toml", "stylua.toml", "selene.toml", "selene.yml", ".git" }
}

vim.lsp.config('lua-language-server', lusls_conf)
vim.lsp.enable('lua-language-server')

