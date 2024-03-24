local tokyonight_theme = {
  plugin_name = 'folke/tokyonight.nvim',
  module_name = 'tokyonight',
  opts = {
    style = "moon", -- storm, night, moon, day
    transparent = false,
    sidebars = { "qf", "help", "vista_kind" },
    dim_inactive = true,
  },
}

local chosen_theme = tokyonight_theme

return {
  chosen_theme.plugin_name,
  opts = chosen_theme.opts,
  lazy = false,
  priority = 1000,
  config = function(_, opts)
    require(chosen_theme.module_name).setup(opts)
    vim.cmd("colorscheme " .. chosen_theme.module_name)

    vim.cmd([[
      autocmd VimEnter * hi DiffAdd guifg=#00FF00 guibg=#005500
      autocmd VimEnter * hi DiffDelete guifg=#FF0000 guibg=#550000
      autocmd VimEnter * hi DiffChange guifg=#CCCCCC guibg=#555555
      autocmd VimEnter * hi DiffText guifg=#00FF00 guibg=#005500
    ]])
  end
}
