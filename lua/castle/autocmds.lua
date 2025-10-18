local autogroup = vim.api.nvim_create_augroup
local castlegroup = autogroup('castle', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = autogroup('HighlightYank', {})

local ts_fold_group = autogroup('TS_FOLD_WORKAROUND', {})
autocmd({ "BufEnter", "BufAdd", "BufNew", "BufNewFile", "BufWinEnter" }, {
    group = ts_fold_group,
    callback = function()
        vim.opt.foldmethod = 'expr'
        vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
        vim.opt.foldopen = 'all'
    end
})

autocmd('LspAttach', {
    group = castlegroup,
    callback = function(e)
        local opts = { buffer = e.buf }
        -- LSP keybindings
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format({ async = true }) end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        -- Diagnostics keybindings
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        -- Diagnostics float NEXT
        vim.keymap.set("n", "[d", function() vim.diagnostic.jump({ count = 1, float = true }) end, opts)
        -- Diagnostics float PREV
        vim.keymap.set("n", "]d", function() vim.diagnostic.jump({ count = -1, float = true }) end, opts)
    end
})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.hl.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

-- autocmd({ 'BufWritePre' }, {
--    group = castlegroup,
--    pattern = '*',
--    command = [[%s/\s\+$//e]],
-- })

autocmd({ 'BufWritePre' }, {
    group = castlegroup,
    pattern = '*',
    callback = function()
        local save_cursor = vim.fn.getpos(".")
        vim.cmd([[
            silent! %s/\s\+$//e
            silent! v/\_s*\S/d
            silent! %s/\n\+\%$//e
            silent! $put _
        ]])
        vim.fn.setpos(".", save_cursor)
    end,
})

