return {
  'stevearc/overseer.nvim',
  opts = {},
  config = function()
    local overseer = require 'overseer'
    overseer.register_template {
      name = 'go run',
      builder = function(params)
        return {
          cmd = { 'go' },
          args = { 'run', '.' },
        }
      end,
    }
    overseer.setup()
  end,
  keys = {
    { '<leader>tt', '<cmd>OverseerToggle<cr>', desc = '[T]oggle [T]ask' },
    { '<leader>tr', '<cmd>OverseerRun<cr>', desc = 'Task Run' },
  },
}
