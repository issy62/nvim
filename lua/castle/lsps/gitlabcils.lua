local util = require("castle.util")

local gitlabcils_conf = {
    cmd = { vim.fn.expand("$HOME/.local/share/nvim/mason/bin/gitlab-ci-ls") },
    filetypes = { "yaml.gitlab" },
    init_options = {
        cache_path = vim.fn.expand("$HOME/.cache/gitlab-ci-ls/"),
        log_path = vim.fn.expand("$HOME/.cache/gitlab-ci-ls//log/gitlab-ci-ls.log")
    },
    root_dir = function(bufnr, on_dir)
        local fname = vim.api.nvim_buf_get_name(bufnr)
        on_dir(util.root_pattern('.git', '.gitlab*')(fname))
    end
}

vim.lsp.config('gitlab-ci-ls', gitlabcils_conf)
vim.lsp.enable('gitlab-ci-ls')

