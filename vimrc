" --- Pathogen ---
execute pathogen#infect()
syntax on
filetype plugin indent on

" --- Editor Settings ---

" line numbers
set number
" don't copy line numbers
set mouse=a

" tab settings
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
"
" smart settings
set smartcase
set smarttab
set smartindent
set autoindent

" show matching brackets
set showmatch

" highlight current line
set cursorline

" fixes some bug issues
set nocompatible

" doesn't wrap
set nowrap
" text width before wrapping
set tw=80

" history
set history=1000

" shows current mode
set showmode

" sync clipboards
set clipboard=unnamedplus,autoselect

" search as we go and highlight
set incsearch
set hlsearch
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" improve completion options
set completeopt=menuone,menu,longest

" ignore certain files
set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest

" graphical menu of matches in command prompt 
set wildmenu

" --- Syntastic ---
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
map <C-s> :SyntasticToggleMode<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" --- Nerd Tree
map <C-n> :NERDTreeToggle<CR>

