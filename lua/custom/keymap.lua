local function map(mode, l, r, desc)
  vim.keymap.set(mode, l, r, { desc = desc })
end

map('n', '[b', '<cmd>bprevious<cr>', 'Prev buffer')
map('n', ']b', '<cmd>bnext<cr>', 'Next buffer')

local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go { severity = severity }
  end
end

map('n', ']d', diagnostic_goto(true), 'Next Diagnostic')
map('n', '[d', diagnostic_goto(false), 'Prev Diagnostic')
map('n', ']e', diagnostic_goto(true, 'ERROR'), 'Next Error')
map('n', '[e', diagnostic_goto(false, 'ERROR'), 'Prev Error')
map('n', ']w', diagnostic_goto(true, 'WARN'), 'Next Warning')
map('n', '[w', diagnostic_goto(false, 'WARN'), 'Prev Warning')

map('n', 'Q', '@qj')
map('x', 'Q', ':norm @q<cr>')
