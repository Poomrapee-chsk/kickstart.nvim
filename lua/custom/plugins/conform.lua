-- conform.nvim already added in init.lua; this extends the formatters configuration.
-- Second setup call overrides the formatters_by_ft defined in init.lua.
require('conform').setup {
  notify_on_error = false,
  format_on_save = function(bufnr)
    local enabled_filetypes = {}
    if enabled_filetypes[vim.bo[bufnr].filetype] then
      return { timeout_ms = 500 }
    end
  end,
  default_format_opts = { lsp_format = 'fallback' },
  formatters_by_ft = {
    lua = { 'stylua' },
    python = { 'ruff', 'black' },
    rust = { 'rustfmt', lsp_format = 'fallback' },
    javascript = { 'prettierd', 'prettier', stop_after_first = true },
    kdl = { 'kdlfmt' },
    tex = { 'tex-fmt' },
    go = { 'goimports', 'gofmt' },
  },
}
