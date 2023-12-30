return {
  'echasnovski/mini.surround',
  config = function()
    require('mini.surround').setup({
      custom_surroundings = {
        ['('] = { output = { left = '(', right = ')' } },
        ['['] = { output = { left = '[', right = ']' } },
        ['{'] = { output = { left = '{', right = '}' } },
        ['<'] = { output = { left = '<', right = '>' } },
      },
    })
  end,
}
