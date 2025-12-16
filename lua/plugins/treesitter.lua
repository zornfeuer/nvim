local treesitter = require('nvim-treesitter')

treesitter.setup()
treesitter.install {
    "c",
    "lua",
    "vim",
    "vimdoc",
    "query",
    "markdown",
    "markdown_inline",
    "python",
    "bash",
    "cpp",
    "rust",
    "nix",
}
