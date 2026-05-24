local function gh(r) return 'https://github.com/' .. r end

vim.pack.add {
  gh 'nvimdev/dashboard-nvim'
}

require('dashboard').setup {
	theme = "hyper",
  mru = { enable = true, label = '', cwd_only = true },
}
