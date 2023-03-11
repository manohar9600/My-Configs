call plug#begin('~/local/share/nvim/plugged')

Plug 'numToStr/Comment.nvim'
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/vim-airline/vim-airline' " Status bar

call plug#end()

lua require('Comment').setup()
:set number
:let g:NERDTreeWinPos = "right"

" key mappigs
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-,> :NERDTreeToggle<CR>