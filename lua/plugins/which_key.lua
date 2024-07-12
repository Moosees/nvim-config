return {
  'folke/which-key.nvim',
  -- event = 'VeryLazy', -- Sets the loading event to 'VimEnter' (`:help autocmd-events`)
  lazy = false,
  dependencies = { 'catppuccin/nvim' },
  config = function() -- This is the function that runs, AFTER loading
    vim.o.timeout = true
    vim.o.timeoutlen = 200

    -- make sure to run this code before calling setup()
    -- refer to the full lists at https://github.com/folke/which-key.nvim/blob/main/lua/which-key/plugins/presets/init.lua

    -- NOTE: maybe messes up stuff
    -- local presets = require 'which-key.plugins.presets'
    -- presets.motions['['] = 'Previous'
    -- presets.motions[']'] = 'Next'
    -- presets.motions['g'] = 'Goto'

    -- setup and document key chains
    local wk = require 'which-key'
    wk.setup {
      key_labels = {
        ['<space>'] = 'SPC',
        ['<tab>'] = 'TAB',
      },
      window = {
        border = 'none',
        margin = { 0, 0, 1, 0 },
        padding = { 1, 0, 1, 0 },
      },
      hidden = { '<silent>', '<cmd>', '<Cmd>', '<CR>', '^:', '^ ', '^call ', '^lua ' }, -- hide mapping boilerplate
      show_help = false, -- show a help message in the command line for using WhichKey
      show_keys = true, -- show the currently pressed key and its label as a message in the command line
    }

    wk.register {
      ['<leader>b'] = { name = '[b]uffers' },
      ['<leader>c'] = { name = '[c]ode' },
      ['<leader>d'] = { name = '[d]ocument' },
      ['<leader>f'] = { name = '[f]ind' },
      ['<leader>g'] = { name = 'Lazy[g]it' },
      ['<leader>h'] = { name = 'Git [h]unk' },
      ['<leader>p'] = { name = '[p]ersitence' },
      ['<leader>r'] = { name = '[r]efactor' },
      ['<leader>s'] = { name = '[s]earch' },
      ['<leader>u'] = { name = '[u]til/toggle' },
      ['<leader>w'] = { name = '[w]orkspace' },
      ['<leader>x'] = { name = 'Fi[x] trouble' },
      ['<leader><tab>'] = { name = '[Tab]s' },
      ['gs'] = { name = '[s]urround' },
      ['gc'] = { name = '[c]omments' },
      ['gb'] = { name = '[b]block comments' },
    }

    -- visual mode
    wk.register({
      ['<leader>h'] = { name = 'Git [h]unk' },
      ['gs'] = { name = '[s]urround' },
      ['<leader>s'] = { name = '[s]earch' },
    }, { mode = 'v' })
  end,
}
