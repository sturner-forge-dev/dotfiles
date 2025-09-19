return {
  'jonroosevelt/gemini-cli.nvim',
  config = function()
    require('gemini').setup {
      split_direction = 'vertical',
    }

    vim.keymap.set('n', '<leader>ag', '<cmd>lua require("gemini").toggle_gemini_cli()<cr>', {
      noremap = true,
      silent = true,
      desc = 'Gemini CLI: Toggle',
    })
  end,
}
