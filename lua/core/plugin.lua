local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'numToStr/Comment.nvim'

Plug 'nvim-tree/nvim-tree.lua'
Plug ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', { branch = '0.1.x' })
Plug 'nvim-telescope/telescope-media-files.nvim'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'wakatime/vim-wakatime'

Plug 'iamcco/markdown-preview.nvim'

Plug 'nvim-lualine/lualine.nvim'

Plug 'lilydjwg/colorizer'

Plug 'f-person/git-blame.nvim'

Plug 'lukas-reineke/indent-blankline.nvim'

-- colorscheme
Plug 'bluz71/vim-nightfly-colors'
Plug 'catppuccin/nvim'

Plug 'mhartington/formatter.nvim'

-- spell-check
Plug 'kamykn/spelunker.vim'

Plug 'nvimdev/dashboard-nvim'

Plug 'windwp/nvim-autopairs'

vim.call('plug#end')
