return {
  'stevearc/overseer.nvim',
  opts = {},
  config = function()
    require('overseer').setup()
  end,
  keys = {
    { '<leader>tt', '<cmd>OverseerToggle<cr>', desc = '[T]oggle [T]ask' },
    { '<leader>tr', '<cmd>OverseerRun<cr>', desc = 'Task Run' },
  },
}
