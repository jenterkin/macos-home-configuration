return {
  "folke/trouble.nvim",
  dependencies = { "kyazdani42/nvim-web-devicons" },
  config = function()
    require("trouble").setup{
      win = {
        wo = {
          wrap = true,
        },
      },
      focus = true,
      preview = {
        type = "float",
        scratch = true,
        focusable  = true,
        border = "rounded",

        relative = "editor",
        size = { width = 0.5, height = 0.3 },

        header = true,
        title = "Preview",
        titlePos = "center",
      },
    }
  end
}
