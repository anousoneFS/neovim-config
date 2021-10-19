inoremap kj <Esc>
inoremap jk <Esc>
inoremap jj <Esc>
vnoremap ee <Esc>

let mapleader=' '
set mouse=a  "enable mouse
set encoding=utf-8
set number relativenumber
set clipboard=unnamedplus    "enable copy from vim for past outside
syntax enable
set noswapfile
set scrolloff=7
set backspace=indent,eol,start

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set splitright
set splitbelow

call plug#begin('~/.vim/plugged')

    " search in project
    Plug 'ctrlpvim/ctrlp.vim'
    " search inside project's content
    Plug 'dyng/ctrlsf.vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'mbbill/undotree'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'morhetz/gruvbox'
	Plug 'sirver/ultisnips'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'vim-airline/vim-airline'
	Plug 'norcalli/nvim-colorizer.lua'
	Plug 'preservim/nerdcommenter'
	Plug 'scrooloose/nerdtree'
	Plug 'jiangmiao/auto-pairs'

call plug#end()

colorscheme gruvbox
let g:airline_theme='gruvbox'

if (has("termguicolors"))
    set termguicolors
endif

lua require 'colorizer'.setup()

" NERDcommenter
nmap <space>c <Plug>NERDCommenterToggle

" file explore
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
let NERDTreeQuitOnOpen=1
nnoremap <leader>t :NERDTreeToggle<CR>

" search file
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard'] "Hide files in .gitignore
let g:ctrlp_show_hidden = 1                                                         "Show dotfiles
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nmap     <C-F>f <Plug>CtrlFPrompt                  
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath


" Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <Tab> :bnext<CR>
nmap <leader>h :bp<CR>
nmap <leader>l :bn<CR>
nmap <leader>q :bd<CR>
nmap <leader>u :UndotreeToggle<CR>

" switching between panels
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

" Use shift + hjkl to resize windows
nnoremap <S-b>    :resize -2<CR>
nnoremap <S-k>    :resize +2<CR>
nnoremap <S-h>    :vertical resize -2<CR>
nnoremap <S-l>    :vertical resize +2<CR>

" Change 2 split windows from vert to horiz or vice versa
map <Leader>th <C-W>t<C-W>H
map <Leader>tk <C-W>t<C-W>K

let g:elite_mode=1                      " Enable arrows"

" Move selected line / block of text in visual mode
" shift + k to move up
xnoremap K :move '<-2<CR>gv-gv
" shift + j to move down is confuse with J in line
xnoremap J :move '>+1<CR>gv-gv

" New tab
"nnoremap <leader>n :tabnew<CR>
nnoremap <leader>n :vnew<CR>

" floaterm
nmap <leader>tt :FloatermNew <CR>

" Ultisnips
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/ultisnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" open terminal
nnoremap <c-n> :call OpenTerminal()<CR>
