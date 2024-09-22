return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    modules = {},
    ensure_installed = {
      "bash",
      "javascript",
      "json",
      "markdown",
      "nix",
      "python",
      "toml",
      "tsx",
      "typescript",
      "vim",
      "yaml",
    },
    auto_install = true,
    sync_install = false,
    ignore_install = {},
    highlight = { enable = true },
    indent = { enable = true },
  }
}
