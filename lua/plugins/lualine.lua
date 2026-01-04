local function setup_lualine()
  require('lualine').setup {
    options = {
      theme = 'gruvbox-material'
    }
  }
end

return {
  "nvim-lualine/lualine.nvim",
  config = setup_lualine
}
