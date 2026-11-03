return {
  'stevearc/oil.nvim',
  opts = {
    default_file_explorer = true,
    columns = {
      'icon',
      'size'
    },
    skip_confirm_for_simple_edits = true,
    use_default_keymaps = false,
    keymaps = {
      ['<CR>'] = 'actions.select',
      ['-'] = { 'actions.parent', mode = 'n' }
    },
    view_options = {
      show_hidden = true
    },
  }
}
