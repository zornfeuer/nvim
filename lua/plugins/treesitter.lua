local function setup_treesitter()
  require('nvim-treesitter').setup()
end

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = setup_treesitter
}
