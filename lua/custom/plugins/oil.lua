return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "-", "<cmd>Oil<cr>", desc = "Open Oil" },
  },
  init = function()
    require("oil").setup()
  end,
  -- event = "VeryLazy",
}
