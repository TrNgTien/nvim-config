local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'numToStr/Comment.nvim'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug('nvim-telescope/telescope.nvim', { branch = '0.1.x' })
Plug 'nvim-telescope/telescope-media-files.nvim'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'

Plug 'wakatime/vim-wakatime'
Plug 'iamcco/markdown-preview.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'lilydjwg/colorizer'
Plug 'f-person/git-blame.nvim'

-- Code indention
Plug 'lukas-reineke/indent-blankline.nvim'
 

-- Color Scheme
Plug 'bluz71/vim-nightfly-colors'

-- spell-check
Plug 'kamykn/spelunker.vim'

-- formartter
Plug 'mhartington/formatter.nvim'
vim.call('plug#end')
