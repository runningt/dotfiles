set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

syntax on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set nu
set ignorecase
set smartcase
colorscheme evening

" Pathogen load
filetype off
"
call pathogen#infect()
call pathogen#helptags()
"
filetype plugin indent on

"autocmd VimEnter * NERDTree
"autocmd VimEnter * NERDTreeTabsOpen
"autocmd BufEnter * NERDTreeMirror
autocmd VimEnter * wincmd w
let g:nerdtree_tabs_open_on_console_startup=1
"let g:nerdtree_tabs_smart_startup_focus=1
let NERDTreeShowHidden=1

"
"" CTRL-X and SHIFT-Del are Cut
"vnoremap <C-X> "+x
"vnoremap <S-Del> "+x
"
"" CTRL-C and CTRL-Insert are Copy
"vnoremap <C-C> "+y
"vnoremap <C-Insert> "+y
"
"" CTRL-V and SHIFT-Insert are Paste
"map <C-V>       "+gP
"map <S-Insert>      "+gP


map <F4> :echo 'Current time is ' . strftime('%c')<Cr>
vnoremap > >gv
vnoremap < <gv


syntax on
