" default options
set completeopt=menuone,noinsert,noselect
set mouse=a
set splitright
set splitbelow
set expandtab
set tabstop=2
set shiftwidth=2
set number
set ignorecase
set smartcase
set incsearch
set diffopt+=vertical
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set shortmess+=c
set signcolumn=yes
set updatetime=750
filetype plugin indent on
let mapleader= " "
if (has("termguicolors"))
	set termguicolors
endif
let g:netrw_banner=0
let g:markdown_fenced_languages=['javascript','js=javascript','json=javascript']
nnoremap <leader>v :e $MYVIMRC<CR>
