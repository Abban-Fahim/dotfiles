call plug#begin()

Plug 'johngrib/vim-game-snake'

Plug 'mbbill/undotree'

Plug 'tpope/vim-obsession'

Plug 'xiyaowong/transparent.nvim'

Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'morhetz/gruvbox'

Plug 'justinmk/vim-sneak'

Plug 'davisdude/vim-love-docs', { 'branch' : 'build' }

Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'mattn/emmet-vim'
Plug 'dcampos/cmp-emmet-vim'
Plug 'ap/vim-css-color'

" Side and top bar
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'luukvbaal/nnn.nvim'
Plug 'romgrk/barbar.nvim'

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

Plug 'numToStr/Comment.nvim'

Plug 'itchyny/lightline.vim'

Plug 'wuelnerdotexe/vim-astro'

Plug 'RRethy/nvim-base16'

Plug 'lervag/vimtex'
Plug 'micangl/cmp-vimtex'

" LSP, cmp n stuff
Plug 'j-hui/fidget.nvim' " a lil gizmo showing the status of the lsp-servers
Plug 'neovim/nvim-lspconfig' " for lsp servers to work
Plug 'hrsh7th/cmp-nvim-lsp' " completeions from the LSPs
Plug 'hrsh7th/cmp-buffer' " based on symbols in current file
Plug 'hrsh7th/cmp-path' " filesystem path completeions
Plug 'hrsh7th/cmp-nvim-lua' " for neovim's lua api
Plug 'hrsh7th/cmp-cmdline' " Command line snippets ig?
Plug 'hrsh7th/nvim-cmp' " main plugin for autocompletion
Plug 'hrsh7th/cmp-vsnip' " plugin for below
Plug 'hrsh7th/vim-vsnip' " plugin for snippets like vscode
Plug 'L3MON4D3/LuaSnip' " Yet another snippet engine
Plug 'williamboman/mason.nvim' " an LSP manager
Plug 'williamboman/mason-lspconfig.nvim' " LSP manager dependency
Plug 'saadparwaiz1/cmp_luasnip' " for custom snippets
Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v2.x'} " LSP setup chad

" Telescope plugins
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }

Plug 'junegunn/goyo.vim'

call plug#end()

set number
set matchpairs+=<:>
set cursorline
set scrolloff=2
set sidescrolloff=5
set nowrap
set tabstop=2
set shiftwidth=4
set softtabstop=4
set autoindent smartindent smarttab expandtab
set undofile
set ignorecase smartcase wildmenu
set shell=bash shellcmdflag=-c
set mouse+=a
set encoding=utf8
scriptencoding utf-8
syntax enable
set noshowmode
set clipboard=unnamedplus
colorscheme catppuccin-macchiato
set fillchars=vert::
let NERDTreeShowHidden=1
autocmd VimEnter * TransparentEnable

let g:sneak#s_next = 1

lua require "setup"
lua require "keymaps"
lua require "lsp"
