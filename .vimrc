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
set switchbuf+=usetab,newtab
colorscheme evening

" Pathogen load
filetype off
"
call pathogen#infect()
call pathogen#helptags()
"
filetype plugin indent on

autocmd VimEnter * wincmd w
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_no_startup_for_diff = 1
let g:nerdtree_tabs_smart_startup_focus=1
let g:nerdtree_tabs_focus_on_files = 1

let NERDTreeMapOpenInTab='<CR>'
let NERDTreeShowHidden=1

let g:ctrlp_show_hidden = 1
let g:ctrlp_open_new_file = 't'
let g:ctrlp_open_multiple_files = 'tj'

let g:pymode_options_max_line_length = 159

let g:stack_width=-1
let g:stack_bottom=1

"clear highlighting
noremap <F3> :set hlsearch!<CR>
"nnoremap <esc> :noh<return><esc>

map <F4> :echo 'Current time is ' . strftime('%c')<Cr>
map <F10> :!py.test -v % && sleep 1 \|\| sleep 2<CR><CR>
map <F9> :!py.test -v . && sleep 1 \|\| sleep 2<CR><CR>
vnoremap > >gv
vnoremap < <gv
nnoremap <F5> :Ag <cword><CR>
vnoremap <F5> y:Ag <C-R>"<CR>

syntax on
