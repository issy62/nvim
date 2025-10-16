return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        cmd = { "TSUpdate", "TSInstall", "TSLog", "TSUninstall" },
        lazy = vim.fn.argc(-1) == 0,
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = "all",
                ignore_install = { "hoon", "earthfile" },
                sync_install = false,
                auto_install = true,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = { "markdown" },
                },
                folds = { enable = true },
                indent = { enable = true },
            })
        end,
    },
}

