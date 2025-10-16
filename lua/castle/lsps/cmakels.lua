local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local cmakels_conf = {
    cmd = { "neocmakelsp", "--stdio" },
    filetypes = { "cmake" },
    root_markers = { ".git", "build", "cmake" },
    capabilities = capabilities
}

vim.lsp.config('neocmakelsp', cmakels_conf)
vim.lsp.enable('neocmakelsp')

