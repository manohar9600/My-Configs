call plug#begin('~/local/share/nvim/plugged')


Plug 'numToStr/Comment.nvim'
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'roxma/nvim-yarp'
Plug 'majutsushi/tagbar'  " show tags in a bar (functions etc) for easy browsing
Plug 'davidhalter/jedi-vim'   " jedi for python
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  "to highlight files in nerdtree
Plug 'Vimjas/vim-python-pep8-indent'  "better indenting for python
Plug 'w0rp/ale'  " python linters
Plug 'ncm2/ncm2'  " awesome autocomplete plugin
Plug 'ncm2/ncm2-bufword'  " buffer keyword completion
Plug 'Shougo/deoplete.nvim' "Async autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'zchee/deoplete-jedi' " Python autocompletion
Plug 'tell-k/vim-autopep8' "autopep8
Plug 'ervandew/supertab' " for autocomplete


call plug#end()

lua require('Comment').setup()
:set number
:let g:NERDTreeWinPos = "right"


" Enable NCM2
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
" Set completeopt to have a better completion experience
" Use <Tab> to accept the suggested completion
inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<Tab>"


" Configure SuperTab
let g:SuperTabDefaultCompletionType = 'context'


" jedi options {{{ 
let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1"
let g:jedi#show_call_signatures_delay = 0
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#show_call_signatures_modes = 'i'  " ni = also in normal mode
let g:jedi#enable_speed_debugging=0
let g:jedi#force_py_version = 3
let g:pymode_python = 'python3'


set clipboard=unnamedplus

" key mappigs
nnoremap <C-e> :NERDTreeToggle<CR>
