return {
  'cbochs/grapple.nvim',
  opts = {
    scope = 'global',
  },
  event = { 'BufReadPost', 'BufNewFile' },
  cmd = 'Grapple',
  keys = {
    { '<leader>gg', '<cmd>Grapple use_scope global<cr>', desc = 'Grapple global scope' },
    { '<leader>gp', '<cmd>Grapple use_scope git<cr>', desc = 'Grapple project (git) scope' },
    { '<leader>gt', '<cmd>Grapple tag<cr>', desc = 'Grapple create tag' },
    { '<leader>gu', '<cmd>Grapple untag<cr>', desc = 'Grapple delete tag' },
    { '<leader>gl', '<cmd>Grapple toggle_tags<cr>', desc = 'Grapple list tags' },
    -- { '<leader>gn', '<cmd>Grapple cycle_tags next<cr>', desc = 'Grapple cycle next tag' },
    -- { '<leader>gp', '<cmd>Grapple cycle_tags prev<cr>', desc = 'Grapple cycle previous tag' },
    { '<leader>gs', '<cmd>Grapple open_scopes<cr>', desc = 'Grapple scopes' },
  },
}
