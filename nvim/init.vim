" Plguins
call plug#begin()
	Plug 'vim-airline/vim-airline' " modifica a barra de estado para deixá-la mais agradável que a versão padrão.
	Plug 'vim-airline/vim-airline-themes'
	Plug 'preservim/nerdtree'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  	Plug 'junegunn/fzf.vim'
	Plug 'ryanoasis/vim-devicons' " mostra ícones na interface, baseado em fontes de ícone.
	Plug 'sheerun/vim-polyglot' " pacote de sintaxes para diversas linguagens de programação.
	Plug 'jiangmiao/auto-pairs' " fecha automaticamente os parênteses, colchetes e chaves ao digitar.
	Plug 'ap/vim-css-color' " mostra as cores (hexadecimal, RGB, HSL) diretamente no código.
	Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install'} " fornece auto-completar de modo bastante semelhante ao disponível no VS Code. Entro em detalhes dele, mais à frente.
	Plug 'airblade/vim-gitgutter' "mostra alterações do Git em arquivos abertos.
	Plug 'neoclide/coc.nvim'	
" Themes
	Plug 'dracula/vim', { 'name': 'dracula' }
	Plug 'morhetz/gruvbox'
	Plug 'roosta/srcery'
	Plug 'joshdick/onedark.vim'
	Plug 'sjl/badwolf'

		
call plug#end()

" Option
colorscheme gruvbox
set autoindent
set incsearch
set confirm
set encoding=utf-8
set bg=dark " aplica o conjunto de cores para telas escuras. Não somente o fundo da tela, como pode parecer.
set clipboard=unnamedplus "habilita a área de transferência entre o Vim/Neovim e os demais programas do sistema.
set completeopt=noinsert,menuone,noselect "destaca a linha atual no editor.
set cursorline " modifica o comportamento do menu de auto-completar para se comportar mais como uma IDE.
set hidden " esconde buffers não usados.
set inccommand=split "mostra substituições em uma divisão da janela, antes de aplicar no arquivo.
set mouse=a "permite o uso do mouse.
set number "mostra o numero das linhas na lateral.
set relativenumber "mostra as linhas a partir da atual. Útil para auxiliar em comandos que usam mais linhas.
set splitbelow splitright " configura o comportamento da divisão da tela.
set title "mostra o título do arquivo.
set ttimeoutlen=0 "tempo em milissegundos para aceitar comandos.
set wildmenu " mostra um menu mais avançado para sugestões de auto-completar.

" Tabs size
set expandtab
set shiftwidth=2
set tabstop=2

" Maps
map q :quit<CR>
map <C-s> :w<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :Files<CR>

" Sintaxe
filetype plugin indent on
syntax on

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
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let NERDTreeShowHidden=1
