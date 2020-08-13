" Required: Use vim, not vi settings
set nocompatible
filetype off

"
" -- Setup Vundle package manager and Plugins
"

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Required: let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" My Plugins
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'
Plugin 'lambdatoast/elm.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'

" Required: All Plugins must be added before this line
call vundle#end()
" Activates filetype detection
filetype plugin indent on
set encoding=utf-8

"
" -- Appearance
"

" -- Syntax Highlighting
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Show relative line numbers
set relativenumber
" Show columns past 80
set colorcolumn=80

" Function to toggle between relative and absolute line numbers
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

"
" -- Tabs and spacing
"

" size of a tabstop
set tabstop=2
set softtabstop=2
" size on an indent
set shiftwidth=2
" make insert indents instead of tabs at the beginning of a line
set smarttab
" always use spaces instead of tab characters
set expandtab

"
" -- Keys
"

" Make backspace behave in a sane manner.
set backspace=indent,eol,start
inoremap jj <Esc>
let mapleader = "\<Space>"
map <Enter> o<ESC>
map <S-Enter> O<ESC>
" Toggle NERDTree
map <C-t> :NERDTreeToggle<CR>

"
" -- Buffers
"

nnoremap <leader>b :bp<CR>
nnoremap <leader>f :bn<CR>

"
" -- Elm
"

nnoremap <leader>em :ElmMakeCurrentFile<CR>

"
" -- Other Stuff
"

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" Syntastic Linter settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Start Ag searches from current project
let g:ag_working_path_mode="r"

