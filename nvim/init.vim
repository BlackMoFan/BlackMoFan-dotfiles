" Sourced from: https://betterprogramming.pub/setting-up-neovim-for-web-development-in-2020-d800de3efacd
" and
" https://www.youtube.com/watch?v=FW2X1CXrU1w

" Fundamentals "{{{
" -------------------------------------------------

set nocompatible
set number
set relativenumber
syntax enable
set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8
set title
" set autoindent
set background=dark
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
" set ai "Auto indent
" set si "Smart indent
set nowrap "No Wrap lines

"}}}

" Theme"{{{
" -------------------------------------------------

if exists("&termguicolors") && exists("&winblend")
	syntax enable
	set termguicolors
	set winblend=0
	set wildoptions=pum
	set pumblend=5
	set background=dark
	" Use NeoSolarized
	let g:neosolarized_termtrans=1
	runtime ./colors/NeoSolarized.vim
	colorscheme NeoSolarized
endif


"}}}

" For Integrated Terminal "{{{
" --------------------------------------
""for the integrated terminal
"" open new split panes to right and below
"set splitright
"set splitbelow
"
"" turn terminal to normal mode with escape
"tnoremap <Esc> <C-\><C-n>
"" start terminal in insert mode
"au BufEnter * if &buftype == 'terminal' | :startinsert | endif
"" open terminal on ctrl+n
"function! OpenTerminal()
"  split term://bash
"  resize 10
"endfunction
"nnoremap <c-n> :call OpenTerminal()<CR>
"" Now, you should be able to open the terminal with CTRL-N. To quit insert mode in the terminal, press Esc.
"" Now, to switch to the code editor pane, use CTRL+w w. 
"
"" --------------------------------------------
"
"" switching between panels
"" use alt+hjkl to move between split/vsplit panels
"tnoremap <A-h> <C-\><C-n><C-w>h
"tnoremap <A-j> <C-\><C-n><C-w>j
"tnoremap <A-k> <C-\><C-n><C-w>k
"tnoremap <A-l> <C-\><C-n><C-w>l
"nnoremap <A-h> <C-w>h
"nnoremap <A-j> <C-w>j
"nnoremap <A-k> <C-w>k
"nnoremap <A-l> <C-w>l
" This allows you to move between your terminal and other panels with Alt+H, Alt+J, Alt+K, and Alt+L.
"}}}

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim
if has("unix")
  let s:uname = system("uname -s")
endif
if has('win32')
  runtime ./windows.vim
endif
"}}}

" Emmet customer snippets"{{{
" ---------------------------------------------------------------------
"let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('./snippets_custom.json')), "\n"))
"
"let g:user_emmet_settings = {
"\  'variables': {'lang': 'en-US'},
"\  'html': {
"\    'default_attributes': {
"\      'option': {'value': v:null},
"\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
"\    },
"\    'snippets': {
"\      'html:5': "<!DOCTYPE html>\n"
"\              ."<html lang=\"${lang}\">\n"
"\              ."<head>\n"
"\              ."\t<meta charset=\"UTF-8\">\n"
"\              ."\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n"
"\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>\n"
"\              ."\t<title></title>\n"
"\              ."</head>\n"
"\              ."<body>\n\t${child}|\n</body>\n"
"\              ."</html>",
"\    },
"\  },
"\}

"}}}

" vim:foldmethod=marker:foldlevel=0
