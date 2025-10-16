return {
    {
        "folke/lazydev.nvim",
        lazy = false,
        ft = "lua",
        enabled = { "lua_ls" },
        opts = {
            library = {
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
    },
    {
        "saghen/blink.cmp",
        dependencies = {
            'rafamadriz/friendly-snippets',
        },
        build = 'cargo +nightly build --release',
        opts = {
            sources = {
                default = { "lazydev", "lsp", "path", "snippets", "buffer" },
                providers = {
                    lazydev = {
                        name = "LazyDev",
                        module = "lazydev.integrations.blink",
                        score_offset = 100,
                    },
                },
            },
            keymap = { preset = 'super-tab' },
            appearance = {
                nerd_font_variant = 'mono',
            },
        },
        opts_extend = { "sources.default" }
    }
}

