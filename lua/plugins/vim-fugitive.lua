return {
    {
        "tpope/vim-fugitive",
        config = function()
            vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

            local castle_fugitive = vim.api.nvim_create_augroup("castle_fugitive", {})
            local autocmd = vim.api.nvim_create_autocmd

            autocmd("BufWinEnter", {
                group = castle_fugitive,
                pattern = "*",
                callback = function()
                    if vim.bo.ft ~= "fugitive" then
                        return
                    end

                    local bufnr = vim.api.nvim_get_current_buf()
                    local opts = { buffer = bufnr, remap = false }

                    -- Push
                    vim.keymap.set("n", "<leader>p", function()
                        vim.cmd.Git('push')
                    end, opts)

                    -- Pull
                    vim.keymap.set("n", "<leader>P", function()
                        vim.cmd.Git({ 'pull', '--rebase' })
                    end, opts)
                end,
            })
        end
    },
}

