return {
  "folke/which-key.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    preset = "helix",
    icons = {
      separator = "→",
    },
    spec = {
      { "<leader>p", group = "plugins" },
      {
        "<leader>pi",
        "<cmd>PackerInstall<cr>",
        desc = "Install Neovim plugins"
      },
      {
        "<leader>pc",
        "<cmd>PackerCompile<cr>",
        desc = "Compile Neovim plugins"
      },
      {
        "<leader>ps",
        "<cmd>PackerSync<cr>",
        desc = "Sync Neovim plugins"
      },

      { "<leader>f", group = "files" },
      {
        "<leader>ff",
        "<cmd>Telescope find_files<cr>",
        desc = "Find files"
      },
      {
        "<leader>fg",
        "<cmd>Telescope git_files<cr>",
        desc = "Find files in git"
      },

      { "<leader>g", group = "git" },
      {
        "<leader>gs",
        "<cmd>Telescope git_status<cr>",
        desc = "Status"
      },
      {
        "<leader>gb",
        "<cmd>GitBlame<cr>",
        desc = "Blame"
      },

      { "<leader>d", group = "diagnostics" },
      {
        "<leader>dw",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Toggle workspace diagnostics"
      },
      {
        "<leader>dt",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Toggle diagnostics"
      },
      {
        "<leader>dl",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Toggle location list"
      },
      {
        "<leader>dq",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Toggle quick fix list"
      },

      { "<leader>l", group = "lsp" },
      {
        "<leader>li",
        "<cmd>LspInfo<cr>",
        desc = "LSP info"
      },
      {
        "<leader>lR",
        "<cmd>LspRestart<cr>",
        desc = "Restart LSP"
      },
      {
        "<leader>ld",
        "<cmd>Telescope diagnostics bufnr=0<cr>",
        desc = "Diagnostics"
      },
      {
        "<leader>lw",
        "<cmd>Telescope diagnostics<cr>",
        desc = "Workspace diagnostics"
      },
      {
        "<leader>lr",
        "<cmd>Telescope lsp_references<cr>",
        desc = "Find references"
      },
      {
        "<leader>lg",
        "<cmd>Telescope lsp_definitions<cr>",
        desc = "Go to definition"
      },
      {
        "<leader>la",
        "<cmd>Telescope lsp_code_actions<cr>",
        desc = "Code actions"
      },
      {
        "<leader>lh",
        "<cmd>lua vim.lsp.buf.hover()<cr>",
        desc = "Hover"
      },
    },
  }
}
