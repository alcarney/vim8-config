" ---------------------------- .vimrc --------------------------------------
"
"  Settings that apply everywhere.

" ---------------------------- First Steps ---------------------------------
"
" nocompatible:  We want the iMproved part.
" filetype ...:  Do stuff based on filetype
" bacspace:      Make backspace behave as you think it should
set nocompatible
filetype plugin indent on
set backspace=indent,eol,start


"  ---------------------------- Tabs and Spaces ----------------------------
"
" expandtab:   Use N spaces instead of a tab character.
" tabstop:     Tabs = N spaces
" softtabstop: Make backspace treat N spaces as a single tab character.
" shiftwidth:  How many spaces to indentation commands move by.
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4


" ----------------------------- Identation ---------------------------------
"
" smartindent:  See :h smartindents
" autoindent:   When starting a new line, match the indentation of the line
"               above
set smartindent
set autoindent


" ----------------------------- Text Formatting ----------------------------
"
" textwidth:      Break lines after N columns.
" formatoptions:  Control how text is automatically formatted. See :h fo-table
set textwidth=79
set formatoptions+="qrcoa"

" Now if we were to repeat the above in a comment, then we should see this wrap
" by the
"

" ----------------------------- Syntax Highlighting and Colours ------------
"
" syntax:        Use syntax highlighting
" background:    Light or dark colourscheme?
" higlight ...:  Tweaks to the style rules.
syntax enable
set background=dark

highlight Comment term=italic cterm=italic
highlight StatusLine term=italic cterm=italic ctermbg=0
highlight StatusLineNC term=italic cterm=italic ctermbg=8
highlight Visual term=italic cterm=italic ctermbg=0
highlight ColorColumn ctermbg=0


" ------------------------------ UI ----------------------------------------
"
" noshowmode:   Don't tell me what mode I'm in.
" showtabline:  When is the tabline shown?
" laststatus:   When is the statuline shown?
" noruler:      Don't show the cursor coordinates
" colorcolumn:  Highlight the given columns in the buffer.
" nowrap:       Truncate lines that are wider than the window
" list:         Display 'list' characters
" listchars:    Characters to use when showing certain invisible chars.
set noshowmode
set showtabline=0
set laststatus=0
set noruler
set colorcolumn=+1
set nowrap
set list
set listchars=tab:».,trail:·,extends:→,precedes:←

" Magic that will change the cursor shape in insert mode.
let &t_ti.="\e[2 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[2 q"
let &t_te.="\e[2 q"


" ------------------------------ Misc --------------------------------------
"
" novisualbell:  Don't use the visualbell for errors
" noswapfile:    Don't produce .swp files
set novisualbell
set noswapfile


" ------------------------------ Key Maps ----------------------------------
"
" mapleader:       Prefix key to use for <leader> mappings
" maplocalleader:  Prefix key to use for <localleader> mappings
let mapleader = '\'
let maplocalleader = ' '

" -- File Management
"
" path:       Search downwards from the working directory
" <leader>f:  Find file
set path=**
nnoremap <leader>f  :find<space>

" -- Buffer Management
"
" hidden:        Allow modified buffers to be sent to the background.
" +:             Open the next buffer
" -:             Open the previous buffer
" <leader>b:     List non-vim buffers and prepare a buffer switch command
" <leader><tab>  Switch to most recent buffer.
set hidden
nnoremap +              :bn<cr>
nnoremap -              :bp<cr>
nnoremap <leader>b      :filter! /\[/ ls<cr>:b<space>
nnoremap <leader><tab>  :b#<cr>

" -- Window Management
"
" splitright:  Create a vertical split on the right
" splitbelow:  Create a horizontal split below
" <c-l>:       Move to window right
" <c-h>:       Move to window left
" <c-j>:       Move to window below
" <c-k>:       Move to window above
" <leader>p:   Move to previous window
set splitright
set splitbelow
nnoremap <c-l>      <c-w><c-l>
nnoremap <c-h>      <c-w><c-h>
nnoremap <c-j>      <c-w><c-j>
nnoremap <c-k>      <c-w><c-k>
nnoremap <leader>p  <c-w>p

" -- Tab Management
"
" <leader>t:  List tabs
nnoremap <leader>t  :tabs<cr>

" -- Commands
"
" <c-n>:  Go forward in the command history
" <c-p>:  Go back in the command history
cnoremap <c-n>  <down>
cnoremap <c-p>  <up>

" -- Centered Movement
"
"  All of the below adjust the standard behavior of various 'jumping about'
"  commands so that the cursor stays centered in the screen.
nnoremap n      nzz
nnoremap N      Nzz
nnoremap <c-o>  <c-o>zz
nnoremap <c-i>  <c-i>zz
nnoremap G      Gzz

" -- Searching
"
" ignorecase:  Do case insensitive searches
" smartcase:   Override ignorecase if pattern contains uppercase chars
" incsearch:   Jump to matches mid search
set ignorecase
set smartcase
set incsearch

" ------------------------------ General Auto Commands ---------------------
"
" In order of appearance:
"   - Trim trailing whitespace
augroup general
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup END

