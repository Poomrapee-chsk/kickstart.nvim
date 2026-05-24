local function gh(r) return 'https://github.com/' .. r end

vim.pack.add { gh 'akinsho/toggleterm.nvim' }

require('toggleterm').setup {}

vim.keymap.set('n', '<leader>th', function() require('toggleterm').toggle() end, { desc = 'Toggle Terminal' })
