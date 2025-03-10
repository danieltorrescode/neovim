return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {}
    vim.keymap.set('n', '<leader>t', '<CMD>NvimTreeToggle<CR>', { desc = 'Toggle File Tree Manager' })
  end,
}
