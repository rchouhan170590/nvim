-- Nvim Tree Setup
require('nvim-tree').setup {
    -- Do not show dotfiles by default
    filters = {
        dotfiles = true,
    },

    -- Update the focused file on open
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },

    renderer = {
        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
        },
    },
}

require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "python", "json", "lua", "bash", "html", "css", "javascript" },
    -- List of parsers to install
    highlight = {
        enable = true, -- false will disable the whole extension
        additional_vim_regex_highlighting = false,
    },
}

-- Keybinding to toggle Nvim Tree
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tree', ':NvimTreeFocus<CR>', { noremap = true, silent = true })
