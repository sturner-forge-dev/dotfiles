return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup()

    vim.keymap.set('n', '<leader>p', function()
      harpoon:list():add()
    end, { desc = '[P]in current buffer to Harpoon list' })

    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Op[e]n Harpoon List' })

    vim.keymap.set('n', '<F1>', function()
      harpoon:list():select(1)
    end, { desc = 'Harpoon to Buffer 1' })

    vim.keymap.set('n', '<F2>', function()
      harpoon:list():select(2)
    end, { desc = 'Harpoon to Buffer 2', noremap = true })

    vim.keymap.set('n', '<F3>', function()
      harpoon:list():select(3)
    end, { desc = 'Harpoon to Buffer 3' })

    vim.keymap.set('n', '<F4>', function()
      harpoon:list():select(4)
    end, { desc = 'Harpoon to Buffer 4', noremap = true })
  end,
}
