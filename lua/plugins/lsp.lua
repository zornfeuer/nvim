vim.lsp.config('rust-analyzer', {
  cmd = { 'rust-analyzer' },
  filetypes = { 'rust' },
})
vim.lsp.enable('rust-analyzer')
vim.lsp.enable('clangd')
vim.lsp.enable('pylsp')
vim.lsp.enable('marksman')
vim.lsp.enable('prismals')
vim.lsp.enable('gopls')

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        local opts = {buffer = ev.buf}
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '<Leader>lr', vim.lsp.buf.rename, opts)
        vim.keymap.set({'n', 'v'}, '<Leader>la', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', '<Leader>lf', function() vim.lsp.buf.format {async = true} end, opts)
    end
})
