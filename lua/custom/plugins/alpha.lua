return {
  'goolord/alpha-nvim',
  dependencies = {
    'echasnovski/mini.icons',
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'
    local theta = require 'alpha.themes.theta'
    theta.header.val = {
      '                                                     ',
      '  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ',
      '  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ',
      '  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ',
      '  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ',
      '  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ',
      '  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ',
      '                                                     ',
    }
    theta.buttons.val = {
      { type = 'text', val = 'Quick links', opts = { hl = 'SpecialComment', position = 'center' } },
      { type = 'padding', val = 1 },
      dashboard.button('n', '  New file', '<cmd>ene<CR>'),
      dashboard.button('o', '󰈞  Old files', ':Telescope oldfiles <CR>'),
      dashboard.button('f', '󰈞  Find files', ':Telescope find_files <CR>'),
      dashboard.button('g', '󰊄  Live grep', ':Telescope live_grep <CR>'),
      dashboard.button('c', '  Configuration', ':e $MYVIMRC<CR>'),
      dashboard.button('u', '  Update plugins', '<cmd>Lazy sync<CR>'),
      dashboard.button('q', '󰅚  Quit', '<cmd>qa<CR>'),
    }
    alpha.setup(theta.config)
  end,
}
