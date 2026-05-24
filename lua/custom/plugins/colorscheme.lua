local function gh(r) return 'https://github.com/' .. r end
-- tokyonight is already added in init.lua
vim.pack.add {
  gh 'AvengeMedia/base46',
  gh 'lewpoly/sherbet.nvim',
  gh 'rebelot/kanagawa.nvim',
  gh 'marko-cerovac/material.nvim',
  gh 'rmehri01/onenord.nvim',
  gh 'catppuccin/nvim',
  gh 'vague-theme/vague.nvim',
  gh 'miikanissi/modus-themes.nvim',
}

vim.g.sherbet_italic_keywords = true
vim.g.sherbet_italic_functions = false
vim.g.sherbet_italic_comments = true
vim.g.sherbet_italic_loops = true
vim.g.sherbet_italic_conditionals = true

vim.cmd("colorscheme base46-matugen")

require('vague').setup {}
