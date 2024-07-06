return { -- Add indentation guides even on blank lines
  'lukas-reineke/indent-blankline.nvim',
  enabled = true,
  -- Enable `lukas-reineke/indent-blankline.nvim`
  -- See `:help ibl`
  main = 'ibl',
  config = function()
    vim.keymap.set('n', '<leader>ti', ':IBLToggle<cr>', { desc = '[t]oggle [i]ndent-blankline' })

    local highlight = {
      'RainbowRed',
      'RainbowYellow',
      'RainbowBlue',
      'RainbowOrange',
      'RainbowGreen',
      'RainbowViolet',
      'RainbowCyan',
    }
    require('ibl').setup {
      scope = { enabled = true, show_start = true },
      indent = { highlight = highlight, char = '▏' },
    }
  end,
}
