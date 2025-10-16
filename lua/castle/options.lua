-- Global options
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.netrw_browse_slit = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
vim.g.ruby_host_prog = vim.fn.expand("$HOME/.local/share/gem/ruby/3.4.0/bin/neovim-ruby-host")
vim.g.editorconfig = false

-- Init Options
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.foldenable = false
vim.opt.clipboard = 'unnamedplus'
vim.opt.undodir = vim.fn.expand("$HOME/.undodir")
vim.opt.undofile = true
-- vim.opt.colorcolumn = "120"
vim.opt.conceallevel = 1

