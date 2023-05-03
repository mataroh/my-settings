call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'name': 'dracula' }
"Plug 'zxqfl/tabnine-vim ' VERIFICAR O PQ DO ERRO
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Themes 
Plug 'morhetz/gruvbox'
Plug 'roosta/srcery'
Plug 'joshdick/onedark.vim'
Plug 'sjl/badwolf'

call plug#end()

colorscheme gruvbox
set bg=dark "Mudar para o tema no modo escuro
set nu!
map q :quit<CR>
map <C-s> :w<CR>
set autoindent 
set incsearch 
set wildmenu
"set laststatus=2
set confirm
set mouse=ai
set cursorline
set encoding=utf-8
set title
"source /home/henrique.mataro/.vim/themes/terroo-colors.vim
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :Files<CR>

" powerline symbols
let g:airline_symbols = {}
let g:airline_theme = 'gruvbox'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' ℅:'
"let g:airline_symbols.readonly = ''
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'
