local zls_conf = {
    -- Do to security  reasons and my contracting environment I have to use
    -- my systems installation.
    cmd = { "/usr/bin/zls" },
    settings = {
        enable_inlay_hints = true,
        enable_snippets = true,
        warn_style = true,
    },
    filetypes = { "zig", "zir" },
    root_markers = { "zls.json", "build.zig", ".git" },
    workspace_required = false
}

vim.lsp.config('zls', zls_conf)
vim.lsp.enable('zls')

