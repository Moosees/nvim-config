return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  after = 'catppucin',

  config = function()
    -- local colors = {
    --   rosewater = '#f5e0dc',
    --   flamingo = '#f2cdcd',
    --   pink = '#f5c2e7',
    --   mauve = '#cba6f7',
    --   red = '#f38ba8',
    --   maroon = '#eba0ac',
    --   peach = '#fab387',
    --   yellow = '#f9e2af',
    --   green = '#a6e3a1',
    --   teal = '#94e2d5',
    --   sky = '#89dceb',
    --   sapphire = '#74c7ec',
    --   blue = '#89b4fa',
    --   lavender = '#b4befe',
    --   text = '#cdd6f4',
    --   subtext1 = '#bac2de',
    --   subtext0 = '#a6adc8',
    --   overlay2 = '#9399b2',
    --   overlay1 = '#7f849c',
    --   overlay0 = '#6c7086',
    --   surface2 = '#585b70',
    --   surface1 = '#45475a',
    --   surface0 = '#313244',
    --   base = '#1e1e2e',
    --   mantle = '#181825',
    --   crust = '#11111b',
    -- }
    --
    -- local catbubbles = {
    --   normal = {
    --     a = { fg = colors.crust, bg = colors.flamingo },
    --     b = { fg = colors.text, bg = colors.surface0 },
    --     c = { fg = colors.text },
    --   },
    --
    --   insert = { a = { fg = colors.crust, bg = colors.blue } },
    --   visual = { a = { fg = colors.crust, bg = colors.green } },
    --   replace = { a = { fg = colors.crust, bg = colors.red } },
    --
    --   inactive = {
    --     a = { fg = colors.text, bg = colors.surface0 },
    --   },
    -- }

    require('lualine').setup {
      options = {
        -- theme = catbubbles,
        theme = 'catppuccin',
        always_divide_middle = true,
        component_separators = { left = '|', right = '|' },
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = { { 'mode', separator = { left = '' }, right_padding = 1 } },
        lualine_b = { 'searchcount', 'selectioncount', 'branch', 'diagnostics', { 'filename', path = 1 } },
        lualine_c = { '%=' },
        lualine_x = {},
        lualine_y = { 'filetype', 'filesize', 'progress' },
        lualine_z = {
          { 'location', separator = { right = '' }, left_padding = 1 },
        },
      },
      inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
      },
      tabline = {},
      extensions = {},
    }
  end,
}
