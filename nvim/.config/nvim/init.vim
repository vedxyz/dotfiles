
" Bind jj to <Esc> for insert mode
imap jj <Esc>

" Fix cursor style upon entering/leaving Vim
au VimEnter,VimResume * set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175
au VimLeave,VimSuspend * set guicursor=a:ver25

" vim-plug configuration
call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'sheerun/vim-polyglot'
Plug 'ap/vim-css-color'
Plug 'lervag/vimtex'
Plug 'flazz/vim-colorschemes'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lambdalisue/suda.vim'

call plug#end()

" Airline theme
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts=1

" Prevent vim trimming indentation on blank lines
inoremap <Return> <Return><Space><BS>
nnoremap o o<Space><BS>
nnoremap O O<Space><BS>




