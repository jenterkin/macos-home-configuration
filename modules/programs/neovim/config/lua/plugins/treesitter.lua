return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      modules = {},
      ensure_installed = {
        "bash",
        "javascript",
        "nix",
        "python",
        "typescript",
      },
      auto_install = true,
      sync_install = false,
      ignore_install = {},
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
