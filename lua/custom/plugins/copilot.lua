local function gh(r) return 'https://github.com/' .. r end

-- Build tiktoken for CopilotChat after install/update
vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    if ev.data.spec.name == 'CopilotChat.nvim' and (ev.data.kind == 'install' or ev.data.kind == 'update') then
      local result = vim.system({ 'make', 'tiktoken' }, { cwd = ev.data.path }):wait()
      if result.code ~= 0 then
        vim.notify('CopilotChat build failed:\n' .. (result.stderr or ''), vim.log.levels.ERROR)
      end
    end
  end,
})

vim.pack.add {
  gh 'zbirenbaum/copilot.lua',
  gh 'CopilotC-Nvim/CopilotChat.nvim',
}

require('copilot').setup {
  filetypes = {
    ['*'] = true,
    markdown = false,
    txt = false,
    sh = function()
      if string.match(vim.fs.basename(vim.api.nvim_buf_get_name(0)), '^%.env.*') then
        return false
      end
      return true
    end,
  },
  suggestion = {
    auto_trigger = true,
    debounce = 1000,
    keymap = {
      accept = '<C-\\>',
      accept_line = '<C-]>',
      dismiss = '<C-e>',
    },
  },
}

require('CopilotChat').setup {}
