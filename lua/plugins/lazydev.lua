return {
    {
        "saghen/blink.cmp",
        dependencies = {
            'saghen/blink.lib',
            'rafamadriz/friendly-snippets',
            'fidget.nvim'
        },
        build = function() require('blink.cmp').build():pwait() end,
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
    },
    {
        "folke/lazydev.nvim",
        --lazy = false,
        ft = "lua",
        -- enabled = { "lua_ls" },
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
    }
}
