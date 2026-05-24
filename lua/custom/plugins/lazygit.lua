local function gh(r) return 'https://github.com/' .. r end

-- plenary.nvim already added by telescope section in init.lua
vim.pack.add { gh 'kdheepak/lazygit.nvim' }

vim.keymap.set('n', '<leader>gg', '<cmd>LazyGit<cr>', { desc = 'LazyGit' })
