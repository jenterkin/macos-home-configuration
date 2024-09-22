return {
  "Shatur/neovim-ayu",
  config = function()
    local ayu = require("ayu")
    ayu.setup({
      overrides = {
        Normal = { bg = "None" },
        ColorColumn = { bg = "None" },
        SignColumn = { bg = "None" },
        Folded = { bg = "None" },
        FoldColumn = { bg = "None" },
        CursorLine = { bg = "None" },
        CursorColumn = { bg = "None" },
        WhichKeyFloat = { bg = "None" },
        VertSplit = { bg = "None" },
      }
    })
    ayu.colorscheme()
  end
}
