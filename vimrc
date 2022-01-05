inoremap jj <ESC>

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
set incsearch
set hlsearch
set clipboard+=unnamedplus

if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' | 
    \   silent execute '!echo -ne "\e[5 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[3 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

" Start NERDTree
" autocmd VimEnter * NERDTree
" Jump to the main window.
" autocmd VimEnter * wincmd p 
nnoremap <Leader>f :NERDTreeToggle<Enter>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let g:airline_powerline_fonts = 1

" set airline theme. good ones are deus, luna, bubblegum, fruit_punch, violet and badwolf
let g:airline_theme='badwolf'

" set number and relative number
set rnu nu

"toggle relative number
nnoremap <Leader>r :set rnu!<Enter>
