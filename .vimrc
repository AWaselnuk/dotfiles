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
Plugin 'lambdatoast/elm.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'

" Required: All Plugins must be added before this line
call vundle#end()
" Activates filetype detection
filetype plugin indent on

"
" -- Appearance
"

" -- Syntax Highlighting
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Show line numbers
set number

"
" -- Keys
"

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

"
" -- Other Stuff
"

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

