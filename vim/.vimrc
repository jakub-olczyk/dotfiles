set showcmd
filetype plugin on
set grepprg=grep\ -nH\ $*
filetype indent on
let g:tex_flavor='latex'

execute pathogen#infect()
syntax on
set term=screen-256color
set colorcolumn=80
set number
set guifont=Monospace
set guioptions-=T
colorscheme wombat256mod
set incsearch
set hlsearch
set tabstop=4
set shiftwidth=4
filetype plugin indent on

let g:formatprg_cpp = "astyle"
let g:formatprg_args_cpp = "--style=linux --indent=tab=8 -xcCKxwfxdp"
let g:formatprg_java = "astyle"
let g:formatprg_args_java = "--style=java --indent=tab=8"

nnoremap <C-l> :tabn<CR>
nnoremap <C-h> :tabp<CR>

"Omnicompletion settings
set omnifunc=syntaxcomplete#Complete
"configure tags - add additional tags here or comment out not-used ones
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4
"build tags of your own project with Ctrl-F12
"map <C-F12> :!ctags -R --sort=yes --c++-kinds=+pl --fields=+iaS --extra=+q
nmap <F1> <Esc>
imap <F1> <Esc>
cmap <F1> <Esc>

let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview
" make Enter select an entry when the popup menu is visible
:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

set diffopt=vertical,filler

" Fugitive
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit -v<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>gps :!git push origin master<CR>
nnoremap <space>gpl :!git pull origin master<CR>
nnoremap <space>gl :!tig<CR>

" SQL Settings
"if expand('%:t') =~ ".*\.sqlout"
	"set tabstop=30
	"set nowrap
"endif
"if expand('%:t') =~ ".*\.refactored"
	"set nowrap
"endif
"if expand('%:t') =~ ".*\.sql"
	"map <F8> :w<CR> :!mysql < % &> out.sqlout; ~/.scripts/parser.pl out.sqlout > out.refactored;<CR> :tabe out.refactored<CR>
"endif
"if expand('%:t') =~ ".*\.sql"
	"map <F7> :w<CR> :!mysql < % &> out.sqlout; <CR> :tabe out.sqlout<CR>
"endif

" Python Settings
"if expand('%:t') =~ ".*\.sqlout"
"	set tabstop=30
"	set nowrap
"endif
"if expand('%:t') =~ ".*\.refactored"
"	set nowrap
"endif
"if expand('%:t') =~ ".*\.sql"
"	map <F8> :w<CR> :!mysql < % &> out.sqlout; ~/.scripts/parser.pl out.sqlout > out.refactored;<CR> :tabe out.refactored<CR>
"endif
if expand('%:t') =~ ".*\.py"
	map <F8> :w<CR> :!python %<CR>
endif

if expand('%:t') =~ ".*\.pl"
	map <F8> :w<CR> :!perl % <CR>
endif

"if expand('%:t') =~ ".*\.[Rr]"
	"map <F8> :w<CR> :!Rscript % <CR>
"endi


if expand('%:t') =~ ".*\.md"
	set spell spelllang=pl
endi

set nowrap
