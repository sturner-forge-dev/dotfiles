return {
  'Nkr1shna/truffle.nvim',
  config = function()
    require('truffle').setup {
      command = 'cursor-agent', -- REQUIRED: set your CLI command, make sure it is available in path
      -- Layout & size
      side = 'right', -- 'right' | 'bottom' | 'left' (default: 'right')
      size = '33%', -- number (cols/rows) or percentage string like '33%'

      -- Window/buffer look
      buffer_name = '[Truffle]', -- friendly buffer name (visible in statusline/tabline)
      buflisted = false, -- whether buffer is listed in :ls (false => only in :ls!)

      -- Behavior & keymaps
      start_insert = true, -- start in terminal insert mode
      create_mappings = true, -- install default keymaps
      mappings = {
        toggle = '<leader>tc',
        send_selection = '<leader>ts',
        send_file = '<leader>tf',
        send_input = '<leader>ti',
      },
    }
  end,
}
