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

Plug 'nvim-lualine/lualine.nvim'

Plug 'lilydjwg/colorizer'

Plug 'f-person/git-blame.nvim'

Plug 'lukas-reineke/indent-blankline.nvim'

-- colorscheme
Plug 'navarasu/onedark.nvim'

Plug 'mhartington/formatter.nvim'

-- spell-check
-- Plug 'kamykn/spelunker.vim'

Plug 'windwp/nvim-autopairs'

Plug 'themaxmarchuk/tailwindcss-colors.nvim'

-- Golang
Plug 'darrikonn/vim-gofmt'

Plug 'JoosepAlviste/nvim-ts-context-commentstring'


vim.call('plug#end')
