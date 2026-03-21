local zls_conf = {
    -- Do to security  reasons and my contracting environment I have to use
    -- my systems installation.
    cmd = { "/usr/bin/zls" },
    settings = {
        enable_inlay_hints = true,
        enable_snippets = true,
        warn_style = true,
        zls = {
            enable_build_on_save = true,
        },
    },
    filetypes = { "zig" },
    root_markers = { "build.zig" },
    workspace_required = false
}

vim.g.zig_fmt_parse_errors = 0
vim.g.zig_fmt_autosave = 0

vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = { "*.zig", "*.zon" },
    callback = function(ev)
        vim.lsp.buf.format()
    end
})

vim.lsp.config('zls', zls_conf)
vim.lsp.enable('zls')

