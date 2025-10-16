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
                'lua-language-server', -- DONE
                'eslint-lsp',          -- DONE
                'gopls',               -- DONE
                'clangd',              -- DONE
                'rust-analyzer',       -- DONE
                'ocaml-lsp',
                'bash-language-server',
                'neocmakelsp', -- DONE
                'asm-lsp',     -- DONE
                'vim-language-server',
                'json-lsp',    -- DONE
                'haskell-language-server',
                'csharp-language-server',
                'html-lsp', -- DONE
                'htmx-lsp', -- DONE
                'elixir-ls',
                'sqlls',    -- DONE
                'ltex-ls',
                'zls',      -- DONE
                'yaml-language-server',
                'python-lsp-server',
                'nimlsp',
                'golangci-lint-langserver',
                'gitlab-ci-ls',
                'autotools-language-server',
                'ols',
                'dockerfile-language-server', -- DONE
                'kotlin-language-server',
                'marksman',                   -- DONE
            },
            auto_update = false,
        }
    }
}

