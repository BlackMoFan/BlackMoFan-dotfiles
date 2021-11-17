set nocompatible              " be iMproved, required
filetype off                  " required

"Setting the encoding"
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8


"" For airline themes
""So set, vim-airline can display the top left arrow"
"set t_Co=256
"set laststatus=2
"set lazyredraw
"let g:airline_theme='powerlineish'
" "Use PowerLine to play the font
" let g:airline_powerline_fonts=1
" if !exists('g:airline_symbols')
"	let g:airline_symbols={}
" endif
" "  Turn off blank detection
" let g:airline#extensions#whitespace#enabled=0

"Syntax highlight"
syntax on

"Command mode is displayed at the bottom"
set showcmd

"Show line number"
set nu

"Highlight the current line"
set cul          "Cursorline's abbreviation form"

"Show parentheses match"
set showmatch

"Set indent" "Set TAB length 5 space"
set tabstop=5

"Set automatic indentation length 5 space"
set shiftwidth=5

"Set Paste Mode"
set nopaste

"Always display the status bar"
set laststatus=2

"Show Current Current Position"
" set ruler

" for industry theme
" set background=dark
" colorscheme industry

" for gruvbox-material theme
" Important!!
if has('termguicolors')
	set termguicolors
endif

" For dark version,
set background=dark

" Set contrast,
" This This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_transparent_background = 1

colorscheme gruvbox-material

" for solarized8 theme
" colorscheme solarized8_high
" let g:solarized_visibility = "high"
" let g:solarized_diffmode = "high"
" let g:solarized_termtrans = 1


" Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}


" for Vim airline theme
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'


Plugin 'Syntastic'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'preservim/nerdtree'
" Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'dense-analysis/ale' " Automatic linting
Plugin 'jiangmiao/auto-pairs' " insert or delete brackets, parens, quotes in pair
Plugin 'Chiel92/vim-autoformat' " autoformat files
"Plugin 'ajmwagar/vim-deus' "deus theme https://github.com/ajmwagar/vim-deus
Plugin 'Shougo/unite.vim' "needed by vimfiler
Plugin 'Shougo/vimfiler.vim' "file explorer in vim
Plugin 'sheerun/vim-polyglot' "nice syntax highlighting
Plugin 'tpope/vim-commentary' "better commenting
Plugin 'psliwka/vim-smoothie' "very smooth scrolling
Plugin 'ryanoasis/vim-devicons' "vim development icons
"Plugin 'beautify-web/js-beautify'
"Plugin 'lifepillar/vim-solarized8' "Plugin for solarized8 theme


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"YCM related"
" let g:ycm_show_diagnostics_ui = 0
" let g:ycm_server_log_level = 'info'
" let g:ycm_min_num_identifier_candidate_chars = 2
" let g:ycm_collect_identifiers_from_comments_and_strings = 1
" let g:ycm_complete_in_strings=1
" let g:ycm_key_invoke_completion = '<c-z>'
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'

"noremap <c-z> <NOP>

" let g:ycm_semantic_triggers =  {
"           \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
"           \ 'cs,lua,javascript': ['re!\w{2}'],
"           \ }


"Vim-Airline Related"
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_detect_modified = 1
" let g:airline_detect_paste = 1
"
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#whitespace#enabled = 0
" let g:airline#extensions#whitespace#symbol = '!'
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#buffer_nr_show = 1

" For autoformat
noremap <F3> :Autoformat<CR> " for autoformat
au BufWrite * :Autoformat

" For Vimfiler
noremap sf :VimFiler<CR> " for VimFiler
" for VimFiler switch between buffers
noremap nb :bnext<CR>
noremap pb :bprevious<CR>

" Set cursor line color on visual mode
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000
