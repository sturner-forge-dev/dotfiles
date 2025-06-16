return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set('n', '<leader>A', function()
      harpoon:list():add()
    end, { desc = '[A]dd current buffer to Harpoon list' })

    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Op[e]n Harpoon' })

    vim.keymap.set('n', '<C-1>', function()
      harpoon:list():select(1)
    end, { desc = 'Harpoon to Buffer 1' })

    vim.keymap.set('n', '<C-2>', function()
      harpoon:list():select(2)
    end, { desc = 'Harpoon to Buffer 2' })

    vim.keymap.set('n', '<C-3>', function()
      harpoon:list():select(3)
    end, { desc = 'Harpoon to Buffer 3' })

    vim.keymap.set('n', '<C-4>', function()
      harpoon:list():select(4)
    end, { desc = 'Harpoon to Buffer 4' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-S-P>', function()
      harpoon:list():prev()
    end, { desc = 'Toggle [P]revious Harpoon buffer' })
    vim.keymap.set('n', '<C-S-N>', function()
      harpoon:list():next()
    end, { desc = 'Toggle [N]ext Harpoon buffer' })
  end,
}
