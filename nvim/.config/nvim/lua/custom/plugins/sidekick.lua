return {
  'folke/sidekick.nvim',
  opts = {
    -- add any options here
    cli = {
      win = {
        wo = {}, ---@type vim.wo
        bo = {}, ---@type vim.bo
        width = 100,
        height = 20,
        layout = 'vertical', ---@type "vertical" | "horizontal"
        position = 'right', ---@type "left"|"bottom"|"top"|"right"
        --- CLI Tool Keymaps
        --- default mode is `t`
        ---@type table<string, sidekick.cli.Keymap|false>
        keys = {
          stopinsert = { '<esc><esc>', 'stopinsert', mode = 't' }, -- enter normal mode
          hide_n = { 'q', 'hide', mode = 'n' }, -- hide from normal mode
          hide_t = { '<c-q>', 'hide' }, -- hide from terminal mode
          win_p = { '<c-w>p', 'blur' }, -- leave the cli window
          blur = { '<c-o>', 'blur' }, -- leave the cli window
          prompt = { '<c-p>', 'prompt' }, -- insert prompt or context
          -- example of custom keymap:
          -- say_hi = {
          --   "<c-h>",
          --   function(t)
          --     t:send("hi!")
          --   end,
          -- },
        },
      },
      -- mux = {
      --   backend = 'tmux',
      --   enabled = true,
      -- },
    },
  },
  keys = {
    {
      '<tab>',
      function()
        -- if there is a next edit, jump to it, otherwise apply it if any
        if not require('sidekick').nes_jump_or_apply() then
          return '<Tab>' -- fallback to normal tab
        end
      end,
      expr = true,
      desc = 'Goto/Apply Next Edit Suggestion',
    },
    {
      '<c-.>',
      function()
        require('sidekick.cli').focus()
      end,
      desc = 'Sidekick Switch Focus',
      mode = { 'n', 'v' },
    },
    {
      '<leader>aa',
      function()
        require('sidekick.cli').toggle { focus = true }
      end,
      desc = 'Sidekick Toggle CLI',
      mode = { 'n', 'v' },
    },
    {
      '<leader>ac',
      function()
        require('sidekick.cli').toggle { name = 'claude', focus = true }
      end,
      desc = 'Sidekick Claude Toggle',
      mode = { 'n', 'v' },
    },
    {
      '<leader>aC',
      function()
        require('sidekick.cli').toggle { name = 'cursor', focus = true }
      end,
      desc = 'Sidekick Cursor Toggle',
      mode = { 'n', 'v' },
    },
    {
      '<leader>ag',
      function()
        require('sidekick.cli').toggle { name = 'gemini', focus = true }
      end,
      desc = 'Sidekick Gemini Toggle',
      mode = { 'n', 'v' },
    },
    {
      '<leader>ao',
      function()
        require('sidekick.cli').toggle { name = 'codex', focus = true }
      end,
      desc = 'Sidekick Codex Toggle',
      mode = { 'n', 'v' },
    },
    {
      '<leader>am',
      function()
        require('sidekick.cli').toggle { name = 'copilot', focus = true }
      end,
      desc = 'Sidekick Copilot Toggle',
      mode = { 'n', 'v' },
    },
    {
      '<leader>ap',
      function()
        require('sidekick.cli').select_prompt()
      end,
      desc = 'Sidekick Ask Prompt',
      mode = { 'n', 'v' },
    },
  },
}
