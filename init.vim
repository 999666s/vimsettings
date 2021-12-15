inoremap jk <esc>


call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'fatih/vim-go'
Plug 'shime/vim-livedown'
Plug 'vimwiki/vimwiki'

" color schemas
Plug 'morhetz/gruvbox'  " colorscheme gruvbox

" For JS/JSX
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

call plug#end()

set encoding=utf-8
set termencoding=utf-8

set noswapfile
set scrolloff=7
set clipboard=unnamedplus

set signcolumn=yes
set shortmess+=c


set wildmenu
set incsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set noswapfile

filetype indent on      " load filetype-specific indent files

colorscheme gruvbox

if (has('termguicolors'))
  set termguicolors
endif

nnoremap ,<space> :nohlsearch<CR>
nnoremap <leader>ld :LivedownToggle<CR>
inoremap jl <esc>

" vimwiki
let wiki_1 = {}
let wiki_1.path = '~/vimwiki/'
let wiki_1.syntax = 'markdown'
let wiki_1.ext = '.md'

let g:vimwiki_list = [wiki_1]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)


nmap <F2> <Plug>(coc-rename)
