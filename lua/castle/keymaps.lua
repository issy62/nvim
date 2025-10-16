vim.keymap.set("x", "<leader>p", [["dP]])
vim.keymap.set("x", "<leader>po", "yyp")
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

