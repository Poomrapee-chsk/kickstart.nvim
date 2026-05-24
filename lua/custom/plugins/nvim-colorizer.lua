local function gh(r) return 'https://github.com/' .. r end

vim.pack.add { gh 'catgoose/nvim-colorizer.lua' }

require('colorizer').setup {
  filetypes = { '*' },
  buftypes = {},
  user_commands = true,
  lazy_load = false,
  user_default_options = {
    names = false,
    names_opts = {
      lowercase = true,
      camelcase = true,
      uppercase = false,
      strip_digits = false,
    },
    names_custom = false,
    RGB = true,
    RGBA = true,
    RRGGBB = true,
    RRGGBBAA = true,
    AARRGGBB = false,
    rgb_fn = true,
    hsl_fn = false,
    css = false,
    css_fn = false,
    tailwind = 'both',
    tailwind_opts = { update_names = true },
    sass = { enable = false, parsers = { 'css' } },
    mode = 'background',
    virtualtext = '■',
    virtualtext_inline = true,
    virtualtext_mode = 'foreground',
    always_update = false,
    hooks = { do_lines_parse = false },
  },
}
