return {
    {
        "airblade/vim-gitgutter",
        config = function()
            vim.keymap.set("n", "<leader>gh", ":GitGutterPreviewHunk<cr>", {noremap = true, silent = true})
        end,
    }
}

