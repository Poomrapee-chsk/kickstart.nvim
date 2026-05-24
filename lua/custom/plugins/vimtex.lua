local function gh(r) return 'https://github.com/' .. r end

vim.pack.add { gh 'lervag/vimtex' }

vim.g.vimtex_view_method = 'zathura'
