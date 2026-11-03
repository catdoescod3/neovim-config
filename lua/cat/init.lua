require('cat.opts')
require('cat.remaps')

vim.api.nvim_create_user_command(
    'Config',
    function()
        local config_path = vim.fn.stdpath('config')
        vim.cmd('e ' .. config_path)
    end,
    {
        desc = 'Open Neovim config directory'
    }
) 
