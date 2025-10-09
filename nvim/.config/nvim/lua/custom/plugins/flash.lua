return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  ---@type Flash.Config
  opts = {},
  config = function(_, opts)
    require("flash").setup(opts)
    
    -- Override default 'f' and 'F' behavior with flash
    vim.keymap.set({ "n", "x", "o" }, "f", function() require("flash").jump() end, { desc = "Flash", noremap = true, silent = true })
    vim.keymap.set({ "n", "x", "o" }, "F", function() require("flash").treesitter() end, { desc = "Flash Treesitter", noremap = true, silent = true })
    vim.keymap.set("o", "r", function() require("flash").remote() end, { desc = "Remote Flash" })
    vim.keymap.set({ "o", "x" }, "R", function() require("flash").treesitter_search() end, { desc = "Treesitter Search" })
    vim.keymap.set("c", "<c-s>", function() require("flash").toggle() end, { desc = "Toggle Flash Search" })
  end,
}
