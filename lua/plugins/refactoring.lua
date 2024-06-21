return {
  'ThePrimeagen/refactoring.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  keys = {
    {
      '<leader>rr',
      function()
        require('telescope').extensions.refactoring.refactors()
      end,
      mode = 'n',
      desc = 'Refactor',
    },
  },
  config = function()
    ---@diagnostic disable-next-line: missing-parameter
    require('refactoring').setup()
  end,
}
