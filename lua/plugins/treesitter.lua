require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "c",
    "lua",
    "vim",
    "vimdoc",
    "query",
    "markdown",
    "markdown_inline",
    "python",
    "julia",
    "bash",
    "cpp",
    "rust",
  },

  auto_install = true,
}
