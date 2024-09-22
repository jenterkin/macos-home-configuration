return {
  "hoob3rt/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "ayu",
        icons_enabled = false,
      }
    })
  end
}
