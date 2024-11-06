call plug#begin('~/.vim/plugged')
  Plug 'tomasiser/vim-code-dark'
  Plug 'pangloss/vim-javascript'
  Plug 'itchyny/lightline.vim'
  Plug 'itchyny/vim-gitbranch'
  Plug 'szw/vim-maximizer'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'kassio/neoterm'
  Plug 'tpope/vim-commentary'
  Plug 'sbdchd/neoformat'
  Plug 'junegunn/fzf', {'dir':'~/.fzf','do':'./install --all'}
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
"  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
  Plug 'janko/vim-test'
  Plug 'puremourning/vimspector'
  Plug 'vimwiki/vimwiki'
  Plug 'ycm-core/YouCompleteMe',{'do':'./install.py --clang-completer --clangd-completer'}
call plug#end()

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
" timasiser/vim-code-dark
colorscheme codedark

" itchyny/lightline.vim and itchyny/vim-gitbranch
let g:lightline = {
      \ 'active':{
      \   'left': [ [ 'mode', 'paste' ],
      \             ['gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \   'colorscheme':'codedark',
      \}

" szw/vim-maximizer
nnoremap <leader>m :MaximizerToggle!<CR>

" kassio/neoterm
let g:neoterm_default_mod = 'vertical'
let g:neoterm_size=60
let g:neoterm_autoinsert=1
nnoremap <c-q> :Ttoggle<CR>
nnoremap <c-q> <Esc>:Ttoggle<CR>
nnoremap <c-q> <c-\><c-n>:Ttoggle<CR>

" sbdchd/neoformat
nnoremap <leader>F :Neoformat prettier<CR>

" junegunn/fzf.vim
nnoremap <leader><space> :GFiles<CR>
nnoremap <leader>ff :Rg<CR>
inoremap <expr> <c-x><c-f> fzf#vim#complete#path(
    \"find . -path '*/\.*' -prune -o -print \| sed '1d;s:^..::'",
    \fzf#wrap({'dir': expand('%:p:h')})






