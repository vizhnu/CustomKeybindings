" Unmap arrow keys in normal mode
no <down> <ESC>
no <left> <ESC>
no <right> <ESC>
no <up> <ESC>

" Unmap arrow keys in insert mode
ino <down> <ESC>
ino <left> <ESC>
ino <right> <ESC>
ino <up> <ESC>
inoremap jj <ESC>
inoremap kk <ESC>

" Move the cursor once to right while in insert mode
inoremap jl <ESC>la

" Remap leader to space
nnoremap <SPACE> <Nop>
map <Space> <Leader>

" Quickly insert an empty new line without entering insert mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

set tabstop=4
set shiftwidth=3
set expandtab
set clipboard+=unnamedplus
