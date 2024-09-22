--
-- Language server setup
--
local lspconfig = require'lspconfig';
lspconfig.bashls.setup{}

lspconfig.lua_ls.setup{
    settings = {
        Lua = {
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            diagnostics = {
                globals = {
                    "vim",
                    "use"
                }
            },
        }
    }
}

lspconfig.nixd.setup{}
lspconfig.vimls.setup{}

-- Autoformat on save
vim.cmd [[autocmd BufWritePre *.lua,*.vim,*.nix run vim.lsp.buf.format()]]
