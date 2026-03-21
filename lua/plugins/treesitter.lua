return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        cmd = { "TSUpdate", "TSInstall", "TSLog", "TSUninstall" },
        lazy = false,
        opts = {
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
	},
    },
}

