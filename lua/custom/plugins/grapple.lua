return {
  'cbochs/grapple.nvim',
  opts = {
    scope = 'global',
    default_scopes = {
      lsp = false,
      static = false,
    },
  },
  event = { 'BufReadPost', 'BufNewFile' },
  cmd = 'Grapple',
  keys = {
    { '<leader>gg', '<cmd>Grapple use_scope global<cr>', desc = 'Grapple Global scope' },
    { '<leader>gp', '<cmd>Grapple use_scope git<cr>', desc = 'Grapple Project (git) scope' },
    { '<leader>gt', '<cmd>Grapple tag<cr>', desc = 'Grapple Tag this file' },
    { '<leader>gu', '<cmd>Grapple untag<cr>', desc = 'Grapple Untag this file' },
    { '<leader>gl', '<cmd>Grapple toggle_tags<cr>', desc = 'Grapple List tags' },
    -- { '<leader>gn', '<cmd>Grapple cycle_tags next<cr>', desc = 'Grapple cycle next tag' },
    -- { '<leader>gp', '<cmd>Grapple cycle_tags prev<cr>', desc = 'Grapple cycle previous tag' },
    { '<leader>gs', '<cmd>Grapple open_scopes<cr>', desc = 'Grapple Scopes' },
  },
}
