if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

" call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
call plug#begin()
" Plugin Section
" Theme
" Plug 'dracula/vim'
"Plug 'bluz71/vim-nightfly-guicolors'
"
"" File Explorer with icons
"Plug 'scrooloose/nerdtree'
"Plug 'ryanoasis/vim-devicons'
"
"" File Search
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'
"
"" Language Client - IntelliSense and Syntax Highlighting
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
"
"" TypeScript Highlighting
"Plug 'leafgarland/typescript-vim'
"Plug 'peitalin/vim-jsx-typescript'



Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
"Plug 'cohama/lexima.vim'

if has("nvim")
        Plug 'neovim/nvim-lspconfig'
        "Plug 'williamboman/nvim-lsp-installer'
"        Plug 'glepnir/lspsaga.nvim'
        Plug 'tami5/lspsaga.nvim'
        Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
        Plug 'nvim-lua/completion-nvim'
        Plug 'windwp/nvim-autopairs'
        "Plug 'windwp/nvim-ts-autotag'
        "for luasnip users
        Plug 'L3MON4D3/LuaSnip'
        Plug 'saadparwaiz1/cmp_luasnip'

        "for nvim-cmp - a completion engine plugin 
        Plug 'hrsh7th/cmp-nvim-lsp'
        Plug 'hrsh7th/cmp-buffer'
        Plug 'hrsh7th/cmp-path'
        Plug 'hrsh7th/cmp-cmdline'
        Plug 'hrsh7th/nvim-cmp'
        Plug 'onsails/lspkind-nvim'
        Plug 'nvim-lua/popup.nvim'
        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim'
        Plug 'kyazdani42/nvim-web-devicons'
        Plug 'hoob3rt/lualine.nvim'
        Plug 'mattn/emmet-vim'
        Plug 'junegunn/goyo.vim' " https://github.com/junegunn/goyo.vim
        " to use: 
        "    :Goyo - toggle Goyo
        "    :Goyo [dimension] - turn on or resize Goyo
        "    :Goyo! - turn off Goyo

endif

call plug#end()
