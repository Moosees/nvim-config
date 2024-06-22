return {
  'folke/which-key.nvim',
  event = 'VeryLazy', -- Sets the loading event to 'VimEnter' (`:help autocmd-events`)
  config = function() -- This is the function that runs, AFTER loading
    vim.o.timeout = true
    vim.o.timeoutlen = 300

    -- make sure to run this code before calling setup()
    -- refer to the full lists at https://github.com/folke/which-key.nvim/blob/main/lua/which-key/plugins/presets/init.lua
    local presets = require 'which-key.plugins.presets'
    presets.motions['['] = 'Previous'
    presets.motions[']'] = 'Next'
    presets.motions['g'] = 'Go to'

    -- setup and document key chains
    local wk = require 'which-key'
    wk.setup {
      -- add operators that will trigger motion and text object completion
      operators = { gc = 'Comments' },
      hidden = { '<silent>', '<cmd>', '<Cmd>', '<CR>', '^:', '^ ', '^call ', '^lua ' }, -- hide mapping boilerplate
    }

    wk.register {
      ['<leader>b'] = { name = '[B]uffers', _ = 'which_key_ignore' },
      ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
      ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
      ['<leader>f'] = { name = '[F]ind', _ = 'which_key_ignore' },
      ['<leader>g'] = { name = 'Lazy[G]it', _ = 'which_key_ignore' },
      ['<leader>h'] = { name = 'Git [H]unk', _ = 'which_key_ignore' },
      ['<leader>r'] = { name = '[R]efactor', _ = 'which_key_ignore' },
      ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
      ['<leader>t'] = { name = '[T]oggle', _ = 'which_key_ignore' },
      ['<leader>u'] = { name = '[U]til/toggle', _ = 'which_key_ignore' },
      ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
      ['<leader>x'] = { name = 'Fi[X] Trouble', _ = 'which_key_ignore' },
      ['<leader><tab>'] = { name = '[Tab]s', _ = 'which_key_ignore' },
      ['gs'] = { name = '[S]urround' },
    }

    -- visual mode
    wk.register({
      ['<leader>c'] = { 'Format [C]ode' },
      ['<leader>h'] = { 'Git [H]unk' },
      ['gs'] = { '[S]urround' },
      ['<leader>s'] = { '[S]earch' },
    }, { mode = 'v' })
  end,
}
