return {
    {
        "williamboman/mason.nvim",
        opts = {},
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        dependencies = {
            "mason.nvim",
        },
        opts = {
            ensure_installed = {
                'lua-language-server',        -- DONE
                'eslint-lsp',                 -- DONE
                'gopls',                      -- DONE
                'clangd',                     -- DONE
                'rust-analyzer',              -- DONE
                'ocaml-lsp',                  -- DONE
                'bash-language-server',       -- DONE
                'neocmakelsp',                -- DONE
                'asm-lsp',                    -- DONE
                'vim-language-server',        -- DONE
                'json-lsp',                   -- DONE
                'haskell-language-server',    -- DONE
                'csharp-language-server',     -- DONE
                'html-lsp',                   -- DONE
                'htmx-lsp',                   -- DONE
                'elixir-ls',                  -- DONE
                'sqlls',                      -- DONE
                'ltex-ls-plus',               -- DONE
                'zls',                        -- DONE
                'yaml-language-server',       -- DONE
                'python-lsp-server',          -- DONE
                'nimlsp',                     -- DONE
                'golangci-lint-langserver',   -- DONE
                'gitlab-ci-ls',               -- DONE
                'autotools-language-server',  -- DONE
                'ols',                        -- DONE
                'dockerfile-language-server', -- DONE
                'kotlin-lsp',                 -- DONE
                'marksman',                   -- DONE
            },
            auto_update = false,
        }
    }
}

