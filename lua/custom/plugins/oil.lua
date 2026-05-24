local function gh(r) return 'https://github.com/' .. r end

-- mini.nvim already added in init.lua; set up mini.icons if not already done
pcall(function() require('mini.icons').setup {} end)

vim.pack.add { gh 'stevearc/oil.nvim' }

require('oil').setup {
  columns = { 'icon', 'size', 'mtime' },
  float = {
    padding = 4,
    win_options = { winblend = 0 },
  },
  preview_win = {
    update_on_cursor_moved = true,
    preview_method = 'fast_scratch',
    disable_preview = function(_) return false end,
    win_options = {},
  },
  keymaps = {
    ['q'] = 'actions.close',
    ['g.'] = { 'actions.toggle_hidden', mode = 'n' },
  },
}

vim.keymap.set('n', '-', '<cmd>Oil --float<cr>', { desc = 'Open parent directory in Oil' })
