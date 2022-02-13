require('telescope').setup {
  extensions = {
    project = {
      display_type = 'full',
      base_dirs = {
        { '~/.local/code' }
      }
    }
  }
}
require('telescope').load_extension('fzf')
require('telescope').load_extension('project')

vim.api.nvim_set_keymap(
  'n',
  '<C-p>',
  "<cmd>lua require'telescope'.extensions.project.project{}<CR>",
  {noremap = true, silent = true}
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>fb",
  "<cmd>lua require'telescope'.extensions.file_browser.file_browser{}<CR>",
  { noremap = true }
)
