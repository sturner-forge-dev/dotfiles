return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  opts = {},
  vim.keymap.set('n', '<leader>cto', ':TSToolsOrganizeImports<CR>', { noremap = true, silent = true, desc = 'Organize Imports' }),
  vim.keymap.set('n', '<leader>ctf', ':TSToolsFixAll<CR>', { noremap = true, silent = true, desc = 'Fix All' }),
  vim.keymap.set('n', '<leader>ctm', ':TSToolsAddMissingImports<CR>', { noremap = true, silent = true, desc = 'Add Missing Imports' }),
}
