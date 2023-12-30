return {
  "NvChad/nvterm",
  -- config = function ()
  --   require("nvterm").setup()
  -- end,
  config = true,
  keys = {
    { "<leader>-", function ()require("nvterm.terminal").toggle "horizontal" end, desc = "Open horizontal terminal", mode = { "n", "t"} },
  }
}
