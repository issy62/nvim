return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/popup.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-ui-select.nvim",
            "telescope-frecency.nvim",
            "telescope-fzf-native.nvim",
            "debugloop/telescope-undo.nvim",
        },
        config = function()
            local builtin = require('telescope.builtin')
            -- local actions = require('telescope.actions')
            local trouble = require('trouble.sources.telescope')

            require("telescope").setup({
                defaults = {
                    mappings = {
                        i = { ["<c-t>"] = trouble.open },
                        n = { ["<c-t>"] = trouble.open },
                    },
                    extensions = {
                        fzf = {
                            fuzzy = true,
                            override_generic_sorter = true,
                            override_file_sorter = true,
                            case_mode = "smart_case",
                        },
                        undo = {
                            side_by_side = true,
                            layout_strategy = "vertical",
                            layout_config = {
                                preview_height = 0.8,
                            },
                        },
                    }
                },
            })

            vim.keymap.set("n", "<leader>pf", builtin.find_files, { noremap = true })
            vim.keymap.set("n", "<leader>pg", builtin.live_grep, { noremap = true })
            vim.keymap.set("n", "<leader>ph", builtin.help_tags, { noremap = true })
            vim.keymap.set("n", "<C-p>", builtin.git_files, { noremap = true })
            vim.keymap.set("n", "<leader>gb", builtin.buffers, { noremap = true })

            vim.keymap.set("n", "<leader>pu", function()
                vim.cmd("Telescope undo")
            end, { noremap = true })

            vim.keymap.set("n", "<leader>pb", function()
                builtin.live_grep({ grep_open_files = true })
            end, { noremap = true })

            vim.keymap.set("n", "<leader>gr", function()
                builtin.lsp_references()
            end, { desc = "Go to References", noremap = true })


            -- Search for the word under the cursor
            vim.keymap.set("n", "<leader>pc", function()
                local word = vim.fn.expand("<cword>")
                builtin.grep_string({ search = word })
            end)

            -- Sarch for the WORD under the cursor
            vim.keymap.set("n", "<leader>pC", function()
                local word = vim.fn.expand("<cWORD>")
                builtin.grep_string({ search = word })
            end)
        end,
    },

    {
        "nvim-telescope/telescope-frecency.nvim",
        dependencies = {
            "tami5/sqlite.lua",
        },
    },
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        name = "telescope-fzf-native.nvim",
        build =
        "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
        config = function()
            require("telescope").load_extension("fzf")
        end,
    },

    {
        "crispgm/telescope-heading.nvim"
    },

    {
        "nvim-telescope/telescope-file-browser.nvim"
    },
}

