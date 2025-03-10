local themes = require 'themes'
local which_key_setup = require 'which-key-setup'
local dashboard = require 'dashboard-setup'
local telescope_setup = require 'telescope-setup'
local lsp_setup = require 'lsp-setup'
local treesitter_setup = require 'treesitter-setup'
local gitsign_setup = require 'gitsigns-setup'
local completion_setup = require 'completion-setup'
local formatters_setup = require 'formatters-setup'
local linters_setup = require 'linters-setup'
local neorg_setup = require 'neorg-setup'
local nvim_tree_setup = require 'nvim-tree-setup'
local oil_setup = require 'oil-setup'
-- local debug = require("debug")

-- [[ Install `lazy.nvim` plugin manager ]]
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- [[ Configure plugins ]]
-- NOTE: Here is where you install your plugins.
--  You can configure plugins using the `config` key.
--
--  You can also configure plugins after the setup call,
--    as they will be available in your neovim runtime.
require('lazy').setup({
  -- NOTE: First, some plugins that don't require any configuration
  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',
  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },
  themes,
  dashboard,
  which_key_setup,
  telescope_setup,
  lsp_setup,
  treesitter_setup,
  gitsign_setup,
  completion_setup,
  formatters_setup,
  linters_setup,
  neorg_setup,
  nvim_tree_setup,
  oil_setup,
}, {})
