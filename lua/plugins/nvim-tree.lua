return {
    {
        "nvim-tree/nvim-tree.lua",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        keys = {
            {
                "<leader>t",
                function()
                    require('nvim-tree.api').tree.toggle()
                end,
                desc = "Open Tree Pane",
            },
            {
                "<leader>tf",
                function()
                    require("nvim-tree.api").tree.toggle({ focus = true })
                end,
                desc = "Open Tree Pane and Focus",
            }
        },
        opts = {
            filters = {
                dotfiles = true,
            },
            renderer = {
                group_empty = true,
            },
            diagnostics = {
                enable = true,
                show_on_dirs = true,
            },
            git = {
                ignore = false,
            },
        },
    }
}
