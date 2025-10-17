local filetypes = { "bib", "context", "gitcommit", "html", "markdown", "org", "pandoc", "plaintex", "quarto", "mail",
    "mdx", "rmd", "rnoweb", "rst", "tex", "text", "typst", "xhtml" }

local language_id_mapping = {
    bib = 'bibtex',
    pandoc = 'markdown',
    plaintex = 'tex',
    rnoweb = 'rsweave',
    rst = 'restructuredtext',
    tex = 'latex',
    text = 'plaintext',
}

local ltexls_conf = {
    cmd = { vim.fn.expand("$HOME/.local/share/nvim/mason/bin/ltex-ls-plus") },
    filetypes = filetypes,
    root_markers = { ".git" },
    get_language_id = function(_, filetype)
        return language_id_mapping[filetype] or filetype
    end,
    settings = {
        ltex = {
            language = "en-US",
            enabled = filetypes,
        },
    }
}

vim.lsp.config('ltex-ls-plus', ltexls_conf)
vim.lsp.enable('ltex-ls-plus')

