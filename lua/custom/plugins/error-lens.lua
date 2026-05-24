local function gh(r) return 'https://github.com/' .. r end

vim.pack.add { gh 'rachartier/tiny-inline-diagnostic.nvim' }

-- Overrides virtual_text = true set in init.lua
vim.diagnostic.config { virtual_text = false }

vim.api.nvim_set_hl(0, 'DiagnosticError', { fg = '#f76464' })
vim.api.nvim_set_hl(0, 'DiagnosticWarn', { fg = '#f7bf64' })
vim.api.nvim_set_hl(0, 'DiagnosticInfo', { fg = '#64bcf7' })
vim.api.nvim_set_hl(0, 'DiagnosticHint', { fg = '#64f79d' })

require('tiny-inline-diagnostic').setup {
  preset = 'classic',
  transparent_bg = false,
  transparent_cursorline = true,
  hi = {
    error = 'DiagnosticError',
    warn = 'DiagnosticWarn',
    info = 'DiagnosticInfo',
    hint = 'DiagnosticHint',
    arrow = 'NonText',
    background = 'CursorLine',
    mixing_color = 'Normal',
  },
  options = {
    show_source = { enabled = false, if_many = false },
    use_icons_from_diagnostic = false,
    set_arrow_to_diag_color = false,
    add_messages = true,
    throttle = 20,
    softwrap = 30,
    multilines = {
      enabled = false,
      always_show = false,
      trim_whitespaces = false,
      tabstop = 4,
    },
    show_all_diags_on_cursorline = false,
    enable_on_insert = false,
    enable_on_select = false,
    overflow = { mode = 'wrap', padding = 0 },
    break_line = { enabled = false, after = 30 },
    format = nil,
    virt_texts = { priority = 2048 },
    severity = {
      vim.diagnostic.severity.ERROR,
      vim.diagnostic.severity.WARN,
      vim.diagnostic.severity.INFO,
      vim.diagnostic.severity.HINT,
    },
    overwrite_events = nil,
  },
  disabled_ft = {},
}
