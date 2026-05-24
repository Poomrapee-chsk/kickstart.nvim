-- NOTE: This replaces mini.statusline (set up in init.lua).
-- To use lualine instead, comment out these lines in init.lua:
--   local statusline = require 'mini.statusline'
--   statusline.setup { use_icons = vim.g.have_nerd_font }
--   statusline.section_location = function() return '%2l:%-2v' end

local function gh(r) return 'https://github.com/' .. r end

vim.pack.add {
  gh 'nvim-lualine/lualine.nvim',
  gh 'nvim-tree/nvim-web-devicons',
}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = { statusline = {}, winbar = {} },
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
      refresh_time = 16,
      events = {
        'WinEnter', 'BufEnter', 'BufWritePost', 'SessionLoadPost',
        'FileChangedShellPost', 'VimResized', 'Filetype',
        'CursorMoved', 'CursorMovedI', 'ModeChanged',
      },
    },
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = { { 'filename', path = 3 } },
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
    lualine_y = { 'lsp_status' },
    lualine_z = { 'location' },
  },
  inactive_sections = {
    lualine_a = {}, lualine_b = {}, lualine_c = {},
    lualine_x = {}, lualine_y = {}, lualine_z = {},
  },
  tabline = {
    lualine_a = { 'buffers' },
    lualine_b = {}, lualine_c = {},
    lualine_x = {}, lualine_y = {},
    lualine_z = { 'tabs' },
  },
  winbar = {},
  inactive_winbar = {},
  extensions = {},
}
