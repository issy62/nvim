local util = require("castle.util")

local nimls_conf = {
    -- The LSP provided by mason is out-of-date
    cmd = { vim.fn.expand("$HOME/.nimble/bin/nimlsp") },
    filetypes = { "nim" },
    root_dir = function(bufnr, on_dir)
        local fname = vim.api.nvim_buf_get_name(bufnr)
        on_dir(
            util.root_pattern '*.nimble' (fname) or
            vim.fs.dirname(vim.fs.find('.git', { path = fname, upward = true })[1])
        )
    end,
}

vim.lsp.config('nimlsp', nimls_conf)
vim.lsp.enable('nimlsp')

