-- In the following configuration, we use: event = 'VimEnter'
-- which loads which-key before all the UI elements are loaded. Events can be
-- normal autocommands events (`:help autocmd-events`).
-- Then, because we use the `config` key, the configuration only runs
-- after the plugin has been loaded: config = function() ... end
return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  -- dependencies = {
  --   'Wansmer/langmapper.nvim',
  -- },
  config = function() -- This is the function that runs, AFTER loading
    vim.o.timeout = true
    vim.o.timeoutlen = 300

    -- local lmu = require 'langmapper.utils'
    -- local view = require 'which-key.view'
    -- local execute = view.execute
    --
    -- -- wrap `execute()` and translate sequence back
    -- local execute_langmap = function(prefix_i, mode, buf)
    --   -- Translate back to English characters
    --   prefix_i = lmu.translate_keycode(prefix_i, 'default', 'ru')
    --   execute(prefix_i, mode, buf)
    -- end
    --
    -- view.execute = execute_langmap

    -- If you want to see translated operators, text objects and motions in
    -- which-key prompt
    -- local presets = require('which-key.plugins.presets')
    -- presets.operators = lmu.trans_dict(presets.operators)
    -- presets.objects = lmu.trans_dict(presets.objects)
    -- presets.motions = lmu.trans_dict(presets.motions)

    require('which-key').setup()
    -- Document existing key chains
    require('which-key').register {
      ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
      ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
      ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
      ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
      ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
      ['<leader>t'] = { name = '[T]oggle', _ = 'which_key_ignore' },
      ['<leader>h'] = { name = 'Git [H]unk', _ = 'which_key_ignore' },
    }
    -- visual mode
    require('which-key').register({
      ['<leader>h'] = { 'Git [H]unk' },
    }, { mode = 'v' })
  end,
}
