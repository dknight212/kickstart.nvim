return {
  'rmagatti/auto-session',
  config = function()
    local auto_session = require 'auto-session'

    auto_session.setup {
      auto_restore_enabled = true,
      auto_save_enabled = true,
      auto_session_suppress_dirs = { '~/', '~/Downloads', '~/Documents', '~/Code' },
      session_lens = {
        -- If load_on_setup is set to false, one needs to eventually call `require("auto-session").setup_session_lens()` if they want to use session-lens.
        load_on_setup = true,
        theme_conf = { border = true },
        previewer = false,
        buftypes_to_ignore = {}, -- list of buffer types that should not be deleted from current session when a new one is loaded
      },
    }

    local keymap = vim.keymap

    keymap.set('n', '<leader>wr', '<cmd>SessionRestore<CR>', { desc = 'Restore session for cwd' }) -- restore last workspace session for current directory
    keymap.set('n', '<leader>wx', '<cmd>SessionSave<CR>', { desc = 'Save session for current working directory' }) -- save workspace session for current working directory
  end,
}
