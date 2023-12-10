return {
  'folke/tokyonight.nvim',
  lazy = false, -- We want the colorscheme to load immediately when starting Neovim
  priority = 1000, -- Load the colorscheme before other non-lazy-loaded plugins
  opts = {
    style = "storm",
    transparent = true,
    sidebars = { "qf", "help", "vista_kind" },
    dim_inactive = true,
  },
  config = function (_, opts)
    require('tokyonight').setup(opts) -- Replace this with your favorite colorscheme
    vim.cmd("colorscheme tokyonight") -- Replace this with your favorite colorscheme
    -- Colorscheme overrides
    vim.cmd([[
      autocmd VimEnter * hi DiffAdd guifg=#00FF00 guibg=#005500
      autocmd VimEnter * hi DiffDelete guifg=#FF0000 guibg=#550000
      autocmd VimEnter * hi DiffChange guifg=#CCCCCC guibg=#555555
      autocmd VimEnter * hi DiffText guifg=#00FF00 guibg=#005500
    ]])
  end
}
