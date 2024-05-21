set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-sensible'

Plugin 'tpope/vim-fugitive'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Plugin 'preservim/nerdtree'

Plugin 'ton/vim-alternate'

Plugin 'mattn/emmet-vim'

Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

let mapleader = ","


" NERDTree
"nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>
" Close the tab if NERDTree is the only window remaining in it.
"autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'


" Airline
" themes base16_pop deus angr
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
"let g:airline_section_b = '%-0.10{getcwd()}'
let g:airline_section_y = ''
let g:airline_section_z = '%3l:%c  .%-3L'
let g:Airline_section_error = ''
let g:Airline_section_warning = ''
let g:airline#extensions#whitespace#checks = [ 'conflicts' ]

" YouCompleteMe
" hide errors
let g:ycm_show_diagnostics_ui = 0
" show inlay hints as comments
let g:ycm_enable_inlay_hints = 0
let g:ycm_clear_inlay_hints_in_insert_mode = 1
" doesn't work. replaced YcmInlayHint with Comment in python/ycm/inlayHints.py
"hi! link YcmInlayHint Comment
" toggle inlay hints
nnoremap <leader>h <Plug>(YCMToggleInlayHints)
" quick smart GoTo
nnoremap <silent> <F9> :YcmCompleter GoTo<CR>

nnoremap <silent> <F8> :Alternate<CR>
let g:AlternatePaths = ['../itf', '../src', '.', '..', 'headers/']

" smaller tab for html files
autocmd BufRead,BufNewFile *.htm,*.html,*.ejs setlocal tabstop=2 shiftwidth=2 softtabstop=2
set tabstop=4
set shiftwidth=4

set number

syntax on
set background=dark
colorscheme sonokai
