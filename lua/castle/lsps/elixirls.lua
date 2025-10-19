local elixirls_conf = {
    -- Do to security  reasons and my contracting environment I have to use
    -- my systems installation.
    cmd = { "/usr/bin/elixir-ls" },
    filetypes = { "elixir", "eelixir", "heex", "surface" },
    root_dir = function(bufnr, on_dir)
        local fname = vim.api.nvim_buf_get_name(bufnr)
        local matches = vim.fs.find({ 'mix.exs' }, { upward = true, limit = 2, path = fname })
        local child_or_root_path, maybe_umbrella_path = unpack(matches)
        local root_dir = vim.fs.dirname(maybe_umbrella_path or child_or_root_path)

        on_dir(root_dir)
    end
}

vim.lsp.config('elixir-ls', elixirls_conf)
vim.lsp.enable('elixir-ls')

