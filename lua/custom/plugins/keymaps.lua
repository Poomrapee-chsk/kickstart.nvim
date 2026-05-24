local keymap = vim.keymap.set

-- keymap('n', '<C-n>', '<cmd>Neotree toggle<CR>', { desc = 'Toggle [N]eotree'})
keymap('n', '<leader>x', '<cmd>bd<CR>', { desc = '[X] Close Buffer' })
keymap('n', '<leader>t[', '<cmd>tabprevious<CR>', { desc = 'Previous [T]ab' })
keymap('n', '<leader>t]', '<cmd>tabnext<CR>', { desc = 'Next [T]ab' })
keymap('n', '<leader>tf', '<cmd>tabnew %<CR>', { desc = '[T]ab [F]ile' })
keymap('n', '<leader>tx', '<cmd>tabclose', { desc = '[T]ab Clo[x]e' })
keymap('n', '<leader>bn', ':enew<CR>', { noremap = true, silent = true})
keymap('n', '\\', '<cmd>vsplit<CR>', { desc = 'Vertical Split' })
keymap('n', '|', '<cmd>split<CR>', { desc = 'Horizontal Split' })
