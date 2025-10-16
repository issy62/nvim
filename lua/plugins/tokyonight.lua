return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            style = "night",
            transparent = true,
            styles = {
                sidebars = "transparent",
            },
            plugins = {
                auto = true,
                telescope = true,
                cmp = true,
                blink = true,
                gitgutter = true,
                lazy = true,
                nvim_tree = true,
            },
        },
        config = function()
            vim.cmd.colorscheme("tokyonight-night")
        end,
    }
}

