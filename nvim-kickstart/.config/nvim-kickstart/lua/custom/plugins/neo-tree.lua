return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  lazy = false, -- neo-tree will lazily load itself
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {
    -- fill any relevant options here
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      follow_current_file = {
        enabled = true,
        leave_dirs_open = false,
      },
    },
    window = {
      mappings = {
        ['J'] = function(state)
          local tree = state.tree
          local node = tree:get_node()
          local siblings = tree:get_nodes(node:get_parent_id())
          local renderer = require 'neo-tree.ui.renderer'
          renderer.focus_node(state, siblings[#siblings]:get_id())
        end,
        ['K'] = function(state)
          local tree = state.tree
          local node = tree:get_node()
          local siblings = tree:get_nodes(node:get_parent_id())
          local renderer = require 'neo-tree.ui.renderer'
          renderer.focus_node(state, siblings[1]:get_id())
        end,
      },
    },
  },
}
