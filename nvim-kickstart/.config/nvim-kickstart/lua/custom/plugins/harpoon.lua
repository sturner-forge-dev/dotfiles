return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Open harpoon window' })

    vim.keymap.set('n', '<leader>A', function()
      harpoon:list():add()
    end, { desc = '[A]dd current buffer to Harpoon list' })

    vim.keymap.set('n', '<M-1>', function()
      harpoon:list():select(1)
    end, { desc = '[1] Select first buffer in Harpoon list' })

    vim.keymap.set('n', '<M-2>', function()
      harpoon:list():select(2)
    end, { desc = '[2] Select second buffer in Harpoon list' })

    vim.keymap.set('n', '<M-3>', function()
      harpoon:list():select(3)
    end, { desc = '[3] Select third buffer in Harpoon list' })

    vim.keymap.set('n', '<M-4>', function()
      harpoon:list():select(4)
    end, { desc = '[4] Select fourth buffer in Harpoon list' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-p>', function()
      harpoon:list():prev()
    end)
    vim.keymap.set('n', '<C-n>', function()
      harpoon:list():next()
    end)
  end,
}
