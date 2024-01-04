return {
  'stevearc/oil.nvim',
  opts = {
    keymaps = {
      ['q'] = 'actions.close',
      ['<esc>'] = 'actions.close',
    },
  },
  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  keys = {
    { '-', '<cmd>Oil<cr>', desc = 'Open Oil' },
  },
  -- init = function()
  --   require("oil").setup()
  -- end,
  -- event = "VeryLazy",
}
