return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            style = "night",
            transparent = true,
            erminal_colors = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
            plugins = {
                trouble = true,
                telescope = true,
                blink = true,
                gitgutter = true,
                lazy = true,
                nvim_tree = true,
            },
        },
    }
}

