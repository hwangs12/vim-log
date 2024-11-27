"set tab to provide 4 spaces"
set number
set tabstop=4
set shiftwidth=4
set expandtab

"open screen to the right"
set splitright

"match open"
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

call plug#begin()

Plug 'junegunn/seoul256.vim'

call plug#end()

" Unified color scheme (default: dark)
colo seoul256

" Light color scheme
colo seoul256-light

" Switch
set background=dark

" directory as a tree in netrw"
let g:netrw_liststyle=3

" hide netrw banner"
let g:netrw_banner=0

" hide vim swap files"
let g:netrw_list_hide='.*\.swp$'

" screen navigation in a window"
nnoremap <C-k> <c-w>w
nnoremap <C-j> <c-w>W

" run file finder plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim

" setting explore width
let g:netrw_winsize=10

" toggle netrw
noremap <C-e> :Lexplore <CR>

autocmd VimEnter * :Lexplore
