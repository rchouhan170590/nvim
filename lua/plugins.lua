return require('packer').startup(function()
    use 'wbthomason/packer.nvim' -- Plugin manager

    use 'lalitmee/cobalt2.nvim'


    -- UI Enhancements
    -- use 'morhetz/gruvbox' -- Theme
    use 'hoob3rt/lualine.nvim'         -- Statusline
    use 'kyazdani42/nvim-web-devicons' -- Icons

    -- Utility library required by many plugins
    use 'nvim-lua/plenary.nvim'

    -- LSP and Completion
    use 'neovim/nvim-lspconfig'         -- LSP configurations
    use 'williamboman/mason.nvim'       -- Package manager for LSP, linters, formatters
    use 'williamboman/mason-lspconfig.nvim' -- Bridge Mason and LSPconfig
    use 'jose-elias-alvarez/null-ls.nvim' -- For formatters and linters


    use 'hrsh7th/nvim-cmp'      -- Autocompletion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip' -- Snippets plugin

    -- Treesitter for better syntax highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- File Explorer
    use 'kyazdani42/nvim-tree.lua'

    -- Better fuzzy finder (files, buffers, etc.)
    use 'nvim-telescope/telescope.nvim'

    -- Automatically close brackets, quotes, etc.
    use 'windwp/nvim-autopairs'

    -- Easy commenting
    use 'numToStr/Comment.nvim'

    -- Git integration
    use 'tpope/vim-fugitive'
    use 'lewis6991/gitsigns.nvim'

    
    -- Obsidian note-taking
    use 'epwalsh/obsidian.nvim'

    -- Indentation guides (like VSCode)
    use 'lukas-reineke/indent-blankline.nvim'

    -- Debugger
    --     Python/Django specific
    use 'mfussenegger/nvim-dap'        -- Debug Adapter Protocol (DAP)
    use 'mfussenegger/nvim-dap-python' -- DAP for Python

    use 'rcarriga/nvim-dap-ui'                 -- UI for DAP (optional)
    use 'theHamsta/nvim-dap-virtual-text'      -- Virtual text (optional)
    use 'nvim-telescope/telescope-dap.nvim'    -- DAP integration with Telescope (optional)

    use { 'nvim-neotest/nvim-nio' }


    use {
        "neovim/nvim-lspconfig",  -- LSP support
        "hrsh7th/nvim-cmp",       -- Autocompletion
        "hrsh7th/cmp-nvim-lsp",   -- LSP source for nvim-cmp
        "hrsh7th/cmp-buffer",     -- Buffer completions
        "hrsh7th/cmp-path",       -- Path completions
        "hrsh7th/cmp-cmdline",    -- Command-line completions
        "saadparwaiz1/cmp_luasnip", -- Snippet completions
        "L3MON4D3/LuaSnip",       -- Snippet engine
    }

      
end)
