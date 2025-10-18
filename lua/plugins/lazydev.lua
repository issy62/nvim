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
        "j-hui/fidget.nvim",
        opts = {
            notification = {
                window = {
                    avoid = { "NvimTree" },
                },
            },
        }
    },
    {
        "saghen/blink.cmp",
        dependencies = {
            'rafamadriz/friendly-snippets',
            'fidget.nvim'
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
            signature = { enabled = true },
            completion = {
                documentation = {
                    auto_show = true,
                }
            },
        },
        opts_extend = { "sources.default" }
    }
}

