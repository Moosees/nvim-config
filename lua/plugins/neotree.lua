return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
  },
  opts = {
    close_if_last_window = false,
    hide_root_node = true,
    default_component_configs = {
      name = {
        trailing_slash = true,
      },
      file_size = {
        enabled = true,
        required_width = 24,
      },
    },
    window = {
      position = 'left',
      width = 48,
      mappings = {
        ['\\'] = 'close_window',
        ['-'] = 'open_split',
        ['|'] = 'open_vsplit',
      },
    },
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          'node_modules',
          '.git',
          '.DS_Store',
        },
      },
    },
  },
}
