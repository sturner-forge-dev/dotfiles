return {
  {
    'ibhagwan/fzf-lua',
    -- optional for icon support
    -- dependencies = { 'nvim-tree/nvim-web-devicons' },
    -- or if using mini.icons/mini.nvim
    dependencies = { 'echasnovski/mini.icons' },
    config = function()
      vim.keymap.set('n', '<leader><leader>', function()
        require('fzf-lua').files()
      end, { desc = 'Find files in current working directory' })

      vim.keymap.set('n', '<leader>s', function()
        require('fzf-lua').live_grep()
      end, { desc = 'Live grep in current working directory' })

      vim.keymap.set('n', '<leader>bl', function()
        require('fzf-lua').buffers()
      end, { desc = '[b]uffer [l]ist' })

      require('fzf-lua').register_ui_select()
    end,
  },
}
