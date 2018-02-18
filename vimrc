" Automatically load plugins in .vim/bundle.
execute pathogen#infect('bundle/{}')

" Lightline config (must be configured before syntax highlighting)
set laststatus=2
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ }
" Remove default -- INSERT -- since we have lightline
set noshowmode

" Syntax highlighting
filetype plugin on
filetype on
syntax on
colorscheme Tomorrow-Night-Eighties

" Font
" set guifont=Menlo\ Regular:h18

" Enable mouse
set mouse=a

" Indicate maximum column width
set colorcolumn=90

" Show line numbers
set number

" Hide (don't close) buffers
set hidden

" Keep a long undo history
set history=100

" Indentation
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" Remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Highlight search words
set hlsearch

" Show matching parentheses
set showmatch

" Configure Nerdtree
let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']

