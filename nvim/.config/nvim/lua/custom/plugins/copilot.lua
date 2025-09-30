return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    build = ':Copilot auth',
    event = 'BufReadPost',
    opts = {
      -- nes = {
      --   enabled = true,
      --   keymap = {
      --     accept_and_goto = '<leader>p',
      --     accept = false,
      --     dismiss = '<Esc>',
      --   },
      -- },
      suggestion = {
        enabled = not vim.g.ai_cmp,
        auto_trigger = true,
        hide_during_completion = vim.g.ai_cmp,
        keymap = {
          accept = '<Tab>',
          next = '<M-i>',
          prev = '<M-o>',
          accept_word = '<C-i>',
          accept_line = '<C-p>',
          dismiss = '<C-u>',
        },
      },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        help = true,
      },
    },
  },
  { 'giuxtaposition/blink-cmp-copilot' },
}
