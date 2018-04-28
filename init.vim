call plug#begin('~/.vim/plugged')
	Plug 'Yggdroot/indentLine'
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'mhartington/nvim-typescript'
	Plug 'scrooloose/nerdtree'
	Plug 'leafgarland/typescript-vim'
  Plug 'kien/ctrlp.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'dracula/vim', { 'as': 'dracula'  }
  Plug 'tpope/vim-fugitive'
  Plug 'w0rp/ale'
  Plug 'airblade/vim-gitgutter'
  Plug 'easymotion/vim-easymotion'
  Plug 'ap/vim-css-color'
  Plug 'vim-airline/vim-airline'
  Plug 'majutsushi/tagbar'
  Plug 'Perlence/tstags'
  Plug 'universal-ctags/ctags'
  Plug 'digitaltoad/vim-pug'
  Plug 'ryanoasis/vim-devicons'
  Plug 'jistr/vim-nerdtree-tabs'
  Plug 'scrooloose/nerdcommenter'
  Plug 'rking/ag.vim'
call plug#end()

let g:tagbar_type_typescript = {                                                  
  \ 'ctagsbin' : 'tstags',                                                        
  \ 'ctagsargs' : '-f-',                                                           
  \ 'kinds': [                                                                     
  \ 'e:enums:0:1',                                                               
  \ 'f:function:0:1',                                                            
  \ 't:typealias:0:1',                                                           
  \ 'M:Module:0:1',                                                              
  \ 'I:import:0:1',                                                              
  \ 'i:interface:0:1',                                                           
  \ 'C:class:0:1',                                                               
  \ 'm:method:0:1',                                                              
  \ 'p:property:0:1',                                                            
  \ 'v:variable:0:1',                                                            
  \ 'c:const:0:1',                                                              
\ ],                                                                            
\ 'sort' : 0                                                                    
\ }                                

map <Leader>n <plug>NERDTreeTabsToggle<CR>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

let g:nerdtree_tabs_open_on_console_startup=1
let g:deoplete#enable_at_startup = 1
let g:typescript_indent_disable = 1
let NERDTreeDirArrows = 1
let g:mapleader=','
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

filetype plugin on

set cursorline
set number
set expandtab
set copyindent
set preserveindent
set softtabstop=2
set shiftwidth=2
set tabstop=2
set omnifunc=syntaxcomplete#Complete
syntax on
color dracula

"Mappings
map <C-n> :NERDTreeToggle<CR>
map <C-i> :TSImport<CR>
map <Leader> <Plug>(easymotion-prefix)
nmap <F8> :TagbarToggle<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'