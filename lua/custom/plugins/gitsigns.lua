return {
  'lewis6991/gitsigns.nvim',
  opts = {
    current_line_blame = true,
    on_attach = function(buffer)
      local gs = package.loaded.gitsigns
      local function map(mode, l, r, desc)
        vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
      end
      map('n', ']g', gs.next_hunk, 'Next Hunk')
      map('n', '[g', gs.prev_hunk, 'Prev Hunk')
    end,
  },
}
