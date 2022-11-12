return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- impatient for faster lua modules loading
    use 'lewis6991/impatient.nvim'

    -- Theme
    use 'morhetz/gruvbox'

    -- Status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Telescope
    use 'nvim-tree/nvim-web-devicons'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep', 'sharkdp/fd'} }
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
    use { 'nvim-telescope/telescope-file-browser.nvim' }
    use { 
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Comments handling
    use 'numToStr/Comment.nvim'

    -- Completion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'saadparwaiz1/cmp_luasnip'
    
    -- Snippets
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'

    -- Bufferline
    use 'akinsho/bufferline.nvim'
    use 'moll/vim-bbye'
end)
