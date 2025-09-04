require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "autopep8", "black" },
    rust = { "rustfmt", lsp_format = "fallback" },
  },
})
