return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'bwpge/lualine-pretty-path',
  },
  opts = function(_, opts)
    -- Set default options if not provided
    opts.options = opts.options or {}
    opts.options.theme = opts.options.theme or 'catppuccin'

    -- Ensure opts.sections exists and has the required structure
    if not opts.sections then
      opts.sections = {}
    end
    if not opts.sections.lualine_c then
      opts.sections.lualine_c = { 'pretty_path' }
    end

    table.insert(opts.sections.lualine_c, {
      function()
        return ' '
      end,
      color = function()
        local status = require('sidekick.status').get()
        if status then
          return status.kind == 'Error' and 'DiagnosticError' or status.busy and 'DiagnosticWarn' or 'Special'
        end
      end,
      cond = function()
        local status = require 'sidekick.status'
        return status.get() ~= nil
      end,
    })
  end,
}
