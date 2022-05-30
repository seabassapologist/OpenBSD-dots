--vim.cmd [[packadd packer.nvim]]

local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'

  use { 'ms-jpq/coq_nvim', run = 'python3 -m coq deps' }
  use 'ms-jpq/coq.artifacts'
  use 'ms-jpq/coq.thirdparty'

  vim.g.acme_style = "colorful"
  vim.cmd[[colorscheme acme]]
end)

use {
  "windwp/nvim-autopairs",
  wants = "nvim-treesitter",
  module = { "nvim-autopairs.completion.cmp", "nvim-autopairs" },
  config = function()
    require("config.autopairs").setup()
  end,
}

local lspconfig = require('lspconfig')

-- Automatically start coq
vim.g.coq_settings = { auto_start = 'shut-up' }

-- Enable some language servers with the additional completion capabilities offered by coq_nvim
local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver', 'gopls' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup(require('coq').lsp_ensure_capabilities({
    -- on_attach = my_custom_on_attach,
  }))
end
