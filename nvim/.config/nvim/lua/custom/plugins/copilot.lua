return {
  {
    'zbirenbaum/copilot.lua',
    requires = { 'copilotlsp-nvim/copilotlsp' },
    cmd = 'Copilot',
    build = ':Copilot auth',
    event = 'BufReadPost',
    enabled = true,
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
        enabled = true,
        auto_trigger = true,
        hide_during_completion = true,
        trigger_on_accept = true,
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
