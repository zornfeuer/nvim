require('conform').setup {
  formatters_by_ft = {
    python = { 'autopep8', 'black' },
    rust = { 'rustfmt', lsp_format = 'fallback' },
  },
}
