local function gh(r) return 'https://github.com/' .. r end

vim.pack.add { gh 'linux-cultist/venv-selector.nvim' }

require('venv-selector').setup {}
