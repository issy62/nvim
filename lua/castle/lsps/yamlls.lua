local yamlls_conf = {
    cmd = { vim.fn.expand("$HOME/.local/share/nvim/mason/bin/yaml-language-server"), "--stdio" },
    filetypes = { "yaml", "yaml.docker-compose", "yaml.gitlab", "yaml.helm-values" },
    on_init = function(client)
        client.server_capabilities.documentFormattingProvider = true
    end,
    root_marker = { ".git" },
    settings = {
        redhat = {
            telemetry = {
                enabled = false
            }
        },
        yaml = {
            format = {
                enable = true
            }
        }
    }
}

vim.lsp.config('yaml-language-server', yamlls_conf)
vim.lsp.enable('yaml-language-server')

