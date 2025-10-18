local util = require("castle.util")

local csharls_conf = {
    -- Do to security  reasons and my contracting environment I have to use
    -- my systems installation.
    cmd = { vim.fn.expand("$HOME/.dotnet/tools/csharp-ls") },
    filetypes = { "cs" },
    init_options = {
        AutomaticWorkspaceInit = true
    },
    root_dir = function(bufnr, on_dir)
        local fname = vim.api.nvim_buf_get_name(bufnr)
        on_dir(util.root_pattern '*.sln' (fname) or util.root_pattern '*.slnx' (fname) or
            util.root_pattern '*.csproj' (fname))
    end
}

vim.lsp.config('csharp-language-server', csharls_conf)
vim.lsp.enable('csharp-language-server')

