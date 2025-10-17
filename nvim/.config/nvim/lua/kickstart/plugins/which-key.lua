-- NOTE: Plugins can also be configured to run Lua code when they are loaded.
--
-- This is often very useful to both group configuration, as well as handle
-- lazy loading plugins that don't need to be loaded immediately at startup.
--
-- For example, in the following configuration, we use:
--  event = 'VimEnter'
--
-- which loads which-key before all the UI elements are loaded. Events can be
-- normal autocommands events (`:help autocmd-events`).
--
-- Then, because we use the `opts` key (recommended), the configuration runs
-- after the plugin has been loaded as `require(MODULE).setup(opts)`.

return {
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
    opts = {
      -- delay between pressing a key and opening which-key (milliseconds)
      -- this setting is independent of vim.o.timeoutlen
      delay = 0,
      icons = {
        -- set icon mappings to true if you have a Nerd Font
        mappings = vim.g.have_nerd_font,
        -- If you are using a Nerd Font: set icons.keys to an empty table which will use the
        -- default which-key.nvim defined Nerd Font icons, otherwise define a string table
        keys = vim.g.have_nerd_font and {} or {
          Up = '<Up> ',
          Down = '<Down> ',
          Left = '<Left> ',
          Right = '<Right> ',
          C = '<C-…> ',
          M = '<M-…> ',
          D = '<D-…> ',
          S = '<S-…> ',
          CR = '<CR> ',
          Esc = '<Esc> ',
          ScrollWheelDown = '<ScrollWheelDown> ',
          ScrollWheelUp = '<ScrollWheelUp> ',
          NL = '<NL> ',
          BS = '<BS> ',
          Space = '<Space> ',
          Tab = '<Tab> ',
          F1 = '<F1>',
          F2 = '<F2>',
          F3 = '<F3>',
          F4 = '<F4>',
          F5 = '<F5>',
          F6 = '<F6>',
          F7 = '<F7>',
          F8 = '<F8>',
          F9 = '<F9>',
          F10 = '<F10>',
          F11 = '<F11>',
          F12 = '<F12>',
        },
      },

      -- Document existing key chains
      spec = {
        { '<leader>t', group = '[T]oggle' },
        { '<leader>a', group = '[A]I' },
        { '<leader>at', group = '[T]ruffle' },
        { '<leader>b', group = '[B]uffers' },
        { '<leader>c', group = '[C]ode' },
        { '<leader>ct', group = '[T]ypescript Tools' },
        { '<leader>g', group = '[G]it' },
        { '<leader>gt', group = '[T]oggle' },
        { '<leader>h', group = 'Git [H]unks' },
        { '<leader>q', group = '[Q]uickfix' },
        
        -- Mini.ai text objects
        { 'a', group = '[A]round text objects' },
        { 'i', group = '[I]nside text objects' },
        { 'an', group = '[A]round [N]ext text object' },
        { 'in', group = '[I]nside [N]ext text object' },
        { 'al', group = '[A]round [L]ast text object' },
        { 'il', group = '[I]nside [L]ast text object' },
        { 'ap', group = '[A]round [P]revious text object' },
        { 'ip', group = '[I]nside [P]revious text object' },
        
        -- Mini.surround operations
        { 'sa', group = '[S]urround [A]dd' },
        { 'sd', group = '[S]urround [D]elete' },
        { 'sr', group = '[S]urround [R]eplace' },
        
        -- Common text object targets for mini.ai
        { 'a)', group = '[A]round [)]parentheses' },
        { 'i)', group = '[I]nside [)]parentheses' },
        { 'a]', group = '[A]round []]brackets' },
        { 'i]', group = '[I]nside []]brackets' },
        { 'a}', group = '[A]round [}]braces' },
        { 'i}', group = '[I]nside [}]braces' },
        { 'a"', group = '[A]round ["]double quotes' },
        { 'i"', group = '[I]nside ["]double quotes' },
        { "a'", group = "[A]round [']single quotes" },
        { "i'", group = "[I]nside [']single quotes" },
        { 'a`', group = '[A]round [`]backticks' },
        { 'i`', group = '[I]nside [`]backticks' },
        { 'a<', group = '[A]round [<]angle brackets' },
        { 'i<', group = '[I]nside [<]angle brackets' },
        { 'aw', group = '[A]round [W]ord' },
        { 'iw', group = '[I]nside [W]ord' },
        { 'as', group = '[A]round [S]entence' },
        { 'is', group = '[I]nside [S]entence' },
        { 'ap', group = '[A]round [P]aragraph' },
        { 'ip', group = '[I]nside [P]aragraph' },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
