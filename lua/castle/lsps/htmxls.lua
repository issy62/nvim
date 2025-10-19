local htmxls_conf = {
    -- The mason lsp provided by mason is one version behind
    cmd = { vim.fn.expand("$HOME/.cargo/bin/htmx-lsp") },
    filetypes = { "aspnetcorerazor", "astro", "astro-markdown", "blade", "clojure", "django-html", "htmldjango", "edge", "eelixir", "elixir", "ejs", "erb", "eruby", "gohtml", "gohtmltmpl", "haml", "handlebars", "hbs", "html", "htmlangular", "html-eex", "heex", "jade", "leaf", "liquid", "markdown", "mdx", "mustache", "njk", "nunjucks", "php", "razor", "slim", "twig", "javascript", "javascriptreact", "reason", "rescript", "typescript", "typescriptreact", "vue", "svelte", "templ" },
    root_markers = { "git" }
}

vim.lsp.config('htmx-lsp', htmxls_conf)
vim.lsp.enable('htmx-lsp')

