local golangcils_conf = {
    cmd = { vim.fn.expand("$HOME/.local/share/nvim/mason/bin/golangci-lint-langserver") },
    filetypes = { "go", "gomod" },
    init_options = {
        command = { "golangci-lint", "run", "--output.json.path=stdout", "--show-stats=false" }
    },
    root_markers = { ".golangci.yml", ".golangci.yaml", ".golangci.toml", ".golangci.json", "go.work", "go.mod", ".git" },
    before_init = function(_, config)
        local v1, v2 = false, false

        if vim.fn.executable 'go' == 1 then
            local exe = vim.fn.exepath 'golangci-lint'
            local version = vim.system({ 'go', 'version', '-m', exe }):wait()
            v1 = string.match(version.stdout, '\tmod\tgithub.com/golangci/golangci%-lint\t')
            v2 = string.match(version.stdout, '\tmod\tgithub.com/golangci/golangci%-lint/v2\t')
        end
        if not v1 and not v2 then
            local version = vim.system({ '/mnt/WORKER/go/bin/golangci-lint', 'version' }):wait()
            v1 = string.match(version.stdout, 'version v?1%.')
        end
        if v1 then
            config.init_options.command = { '/mnt/WORKER/go/bin/golangci-lint', 'run', '--out-format', 'json' }
        end
    end,
}

vim.lsp.config('golangci-lint-langserver', golangcils_conf)
vim.lsp.enable('golangci-lint-langserver')

