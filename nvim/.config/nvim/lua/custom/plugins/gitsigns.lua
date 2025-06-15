return {
  -- Adds git related signs to the gutter, as well as utilities for managing changes
  'lewis6991/gitsigns.nvim',
  event = 'VeryLazy',
  -- Optional: If you want to use the default keymaps, you can set them up like this:
  keys = {
    { '<leader>gs', '<cmd>Gitsigns<cr>', desc = '[G]itsigns: Toggle Git[s]igns' },
    { '<leader>gp', '<cmd>Gitsigns preview_hunk<cr>', desc = '[G]itsigns: [P]review Hunk' },
    { '<leader>gr', '<cmd>Gitsigns reset_hunk<cr>', desc = '[G]itsigns: [R]eset Hunk' },
    { '<leader>gb', '<cmd>Gitsigns blame<cr>', desc = '[G]itsigns: Git [B]lame' },
    { '<leader>gl', '<cmd>Gitsigns blame_line<cr>', desc = '[G]itsigns: Blame [L]ine' },
    { '<leader>gtd', '<cmd>Gitsigns toggle_deleted<cr>', desc = '[G]itsigns: [T]oggle [D]eleted Lines' },
    { '<leader>ghs', '<cmd>Gitsigns stage_hunk<cr>', desc = '[G]itsigns: [S]tage [H]unk' },
    { '<leader>ghu', '<cmd>Gitsigns undo_stage_hunk<cr>', desc = '[G]itsigns: [U]ndo Stage [H]unk' },
  },
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
  },
}
