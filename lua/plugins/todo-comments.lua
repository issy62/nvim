return {
     "folke/todo-comments.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
        "ibhagwan/fzf-lua",
        "nvim-tree/nvim-web-devicons",
    },
    opts = {},
    keys = {
        {"<leader>pt", "<cmd>TodoTelescope<cr>", desc = "Open todo list"},
    }
}

