local vimls_conf = {
    cmd = { vim.fn.expand("$HOME/.local/share/nvim/mason/bin/vim-language-server"), "--stdio" },
    filetypes = { "vim" },
    init_options = {
        diagnostic = {
            enable = true
        },
        indexes = {
            count = 3,
            gap = 100,
            projectRootPatterns = { "runtime", "nvim", ".git", "autoload", "plugin" },
            runtimepath = true
        },
        isNeovim = true,
        iskeyword = "@,48-57,_,192-255,-#",
        runtimepath = "",
        suggest = {
            fromRuntimepath = true,
            fromVimruntime = true
        },
        vimruntime = ""
    },
    root_markers = { ".git" }
}

vim.lsp.config('vim-language-server', vimls_conf)
vim.lsp.enable('vim-language-server')

