local noremap = function(modes, lhs, rhs)
  vim.keymap.set(modes, lhs, rhs, { 
    remap = false, silent = true
  })
end

-- Mode Switching
noremap({ 'i', 'v' }, '<leader>jk', '<ESC>')

-- Buffer Navigation
noremap({ 'n', 'v' }, '<C-j>', '<C-d>zz')
noremap({ 'n', 'v' }, '<C-k>', '<C-D>zz')

-- Window Navigation
noremap('n', '<C-h>', '<C-w>h')
noremap('n', '<C-j>', '<C-w>j')
noremap('n', '<C-k>', '<C-w>k')
noremap('n', '<C-l>', '<C-w>l')
noremap('n', '<C-d>', '<C-d>zz')
noremap('n', '<C-u>', '<C-u>zz')

-- Window Splits
noremap('n', 'sh', ':split<CR>')
noremap('n', 'sv', ':vsplit<CR>')

-- Window Resize
noremap('n', '-', ':vert res -5<CR>')
noremap('n', '+', ':vert res +5<CR>')
noremap('n', '==', '<C-W>=')

-- Diagnostic
noremap('n', '<leader>sd', vim.diagnostic.open_float)

-- Oil
noremap('n', '<leader>_', '<CMD>Oil<CR>')

-- Terminal
noremap('t', '<leader><Esc>', '<C-\\><C-m>')
