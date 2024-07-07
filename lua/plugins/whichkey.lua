return {
  'folke/which-key.nvim',
  -- event = 'VeryLazy', -- Sets the loading event to 'VimEnter' (`:help autocmd-events`)
  event = 'VimEnter',
  after = 'catppuccin',
  config = function() -- This is the function that runs, AFTER loading
    vim.o.timeout = true
    vim.o.timeoutlen = 300

    -- make sure to run this code before calling setup()
    -- refer to the full lists at https://github.com/folke/which-key.nvim/blob/main/lua/which-key/plugins/presets/init.lua
    local presets = require 'which-key.plugins.presets'
    presets.motions['['] = 'Previous'
    presets.motions[']'] = 'Next'
    presets.motions['g'] = 'Goto'

    -- setup and document key chains
    local wk = require 'which-key'
    wk.setup {
      -- add operators that will trigger motion and text object completion
      operators = { gc = 'Line [c]omments', gb = '[b]lock comments' },
      key_labels = {
        ['<space>'] = 'SPC',
        ['<tab>'] = 'TAB',
      },
      window = {
        border = 'shadow',
        margin = { 0, 0, 0, 0 },
        padding = { 1, 0, 0, 0 },
      },
      hidden = { '<silent>', '<cmd>', '<Cmd>', '<CR>', '^:', '^ ', '^call ', '^lua ' }, -- hide mapping boilerplate
      show_help = false, -- show a help message in the command line for using WhichKey
      show_keys = false, -- show the currently pressed key and its label as a message in the command line
    }

    wk.register {
      ['<leader>b'] = { name = '[b]uffers', _ = 'which_key_ignore' },
      ['<leader>c'] = { name = '[c]ode', _ = 'which_key_ignore' },
      ['<leader>d'] = { name = '[d]ocument', _ = 'which_key_ignore' },
      ['<leader>f'] = { name = '[f]ind', _ = 'which_key_ignore' },
      ['<leader>g'] = { name = 'Lazy[g]it', _ = 'which_key_ignore' },
      ['<leader>h'] = { name = 'Git [h]unk', _ = 'which_key_ignore' },
      ['<leader>r'] = { name = '[r]efactor', _ = 'which_key_ignore' },
      ['<leader>s'] = { name = '[s]earch', _ = 'which_key_ignore' },
      ['<leader>u'] = { name = '[u]til/toggle', _ = 'which_key_ignore' },
      ['<leader>w'] = { name = '[w]orkspace', _ = 'which_key_ignore' },
      ['<leader>x'] = { name = 'Fi[x] trouble', _ = 'which_key_ignore' },
      ['<leader><tab>'] = { name = '[Tab]s', _ = 'which_key_ignore' },
      ['gs'] = { name = '[s]urround' },
    }

    -- visual mode
    wk.register({
      ['<leader>c'] = { 'Format [c]ode' },
      ['<leader>h'] = { 'Git [h]unk' },
      ['gs'] = { '[s]urround' },
      ['<leader>s'] = { '[s]earch' },
    }, { mode = 'v' })
  end,
}
