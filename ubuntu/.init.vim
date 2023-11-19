set nocompatible              " be iMproved, required
filetype plugin indent on     
" Disable annoying beeping
set belloff=all

set nocompatible
set autoindent
set cindent
" searching ignoring case
set ignorecase


set cursorcolumn

set clipboard=unnamed


"--------------------------------------------Plugin 시작

call plug#begin()

" basic plugin
Plug 'blueyed/vim-diminactive' "화면 분할 시 background color 변경
Plug 'koron/nyancat-vim'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree' 
Plug 'dracula/vim', { 'as': 'dracula' }

" coc plugin
Plug 'haya14busa/vim-asterisk'
Plug 'jackguo380/vim-lsp-cxx-highlight'


Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'nvie/vim-flake8' " python 문법 검사
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


Plug 'ronakg/quickr-cscope.vim'

Plug 'tribela/vim-transparent'



call plug#end()

"---------------------------------------------Plugin 종료

"--------------------------------------------- vim 기본 설정

" color setting
colorscheme dracula
let g:dracula_colorterm = 0

let mapleader=","
" line number
set number relativenumber
set nu rnu


syntax on           "구문 강조
set t_Co=256        "구문강조 색 변경
set encoding=utf-8
set nu              "Line 출력
set tabstop=4       "<Tab> key 4칸 이동
set cursorline      "현재 줄 강조
set ruler
set laststatus=2    "두줄로 표시
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\  "현재 라인 위치 출력
set wildmenu

" set showcmd
set showcmd

"-------------------------------------------- vim 기본 설정 끝


" ------------------------------------------------- mapping  시작
"



" open rc
nmap <Leader>rc :rightbelow vnew $MYVIMRC<CR>

" nerdtre setting
nmap <C-F> :NERDTreeFind<CR>
nmap <Leader>nerd :NERDTreeToggle<CR>

" fzf setting
nmap <C-P> :FZF<CR>

 " ultisnips
 "
 " " ultisnips
let g:UltiSnipsExpandTrigger="<C-y>"
let g:UltiSnipsJumpForwardTrigger="<Right>"
let g:UltiSnipsJumpBackwardTrigger="<Left>"


inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"
