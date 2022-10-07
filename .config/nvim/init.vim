if !&compatible
  set nocompatible
endif

" dein自体の自動インストール
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif

let &runtimepath = s:dein_repo_dir .",". &runtimepath
" プラグイン読み込み＆キャッシュ作成
let s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/dein.toml'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml('~/.config/nvim/dein.toml')
  call dein#load_toml('~/.config/nvim/lsp.toml', {'lazy': 0}) 
"  call dein#add('nvim-treesitter/nvim-treesitter', { 'merged': 0 })

  " call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})
  call map(dein#check_clean(), "delete(v:val, 'rf')")
  call dein#end()
  call dein#save_state()
endif

" 不足プラグインの自動インストール
if dein#check_install()
  call dein#install()
endif

let s:removed_plugins = dein#check_clean()
if len(s:removed_plugins)>0
  call map(s:removed_plugins, "delete(v:val, 'rf')")
  call dein#recache_runtimepath()
endif

let g:python_host_prog = expand('/usr/bin/python2')

let g:python3_host_prog = expand('/usr/local/bin/python3')


" setting 
set fenc=utf-8

set nobackup

set noswapfile
set autoread
set hidden
set showcmd
set clipboard=unnamed

" visual
set number
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest
nnoremap j gj
nnoremap k gk
syntax enable

" color
set termguicolors
syntax enable 
colorscheme rigel 
set pumblend=15
set t_Co=256

" Tab
set list listchars=tab:\▸\-
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent

" search
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

nmap <Esc><Esc> :nohlsearch<CR><Esc>
