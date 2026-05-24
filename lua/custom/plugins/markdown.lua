local function gh(r) return 'https://github.com/' .. r end

-- nvim-treesitter and mini.nvim already added in init.lua
vim.pack.add { gh 'MeanderingProgrammer/render-markdown.nvim' }

require('render-markdown').setup {}
