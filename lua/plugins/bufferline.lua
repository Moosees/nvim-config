return {
  'akinsho/bufferline.nvim',
  event = 'VeryLazy',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  keys = function()
    return {
      { '<leader>bp', '<Cmd>BufferLineTogglePin<CR>', desc = 'Toggle Pin' },
      { '<leader>bP', '<Cmd>BufferLineGroupClose ungrouped<CR>', desc = 'Delete Non-Pinned Buffers' },
      { '<leader>bo', '<Cmd>BufferLineCloseOthers<CR>', desc = 'Delete Other Buffers' },
      { '<leader>br', '<Cmd>BufferLineCloseRight<CR>', desc = 'Delete Buffers to the Right' },
      { '<leader>bl', '<Cmd>BufferLineCloseLeft<CR>', desc = 'Delete Buffers to the Left' },
      { '<S-h>', '<cmd>BufferLineCyclePrev<cr>', desc = 'Prev Buffer' },
      { '<S-l>', '<cmd>BufferLineCycleNext<cr>', desc = 'Next Buffer' },
      { '[b', '<cmd>BufferLineMovePrev<cr>', desc = 'Move buffer prev' },
      { ']b', '<cmd>BufferLineMoveNext<cr>', desc = 'Move buffer next' },
    }
  end,
  opts = {
    options = {
      mode = 'buffers',
      themable = false,
      always_show_bufferline = true,
      show_buffer_close_icons = false,
      show_close_icon = false,
      offsets = {
        {
          filetype = 'neo-tree',
          text = ' ',
        },
      },
      separator_style = { '', '' },
      highlights = {
        background = {
          bg = '#1e1e2e',
        },
        fill = {
          bg = '#1e1e2e',
        },
      },
    },
  },
}
