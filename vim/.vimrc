" show what you typed in the last line (normal mode)
set showcmd

filetype plugin on
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

" Enable plugins
execute pathogen#infect()
syntax on
filetype plugin indent on
filetype indent on

set term=screen-256color
set colorcolumn=80
set number

set guifont=Monospace
set guioptions-=T
colorscheme wombat256mod

" Show matches when typing the search
set incsearch
" Highlight matched search terms
set hlsearch

" Automatically convert tabs to spaces
set tabstop=4
set expandtab

set shiftwidth=4

" Easier navigation through tabs
nnoremap <C-l> :tabn<CR>
nnoremap <C-h> :tabp<CR>

"Omnicompletion settings
set omnifunc=syntaxcomplete#Complete

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

" Fugitive (vim plugin for git)
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit -v<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>gps :!git push origin master<CR>
nnoremap <space>gpl :!git pull origin master<CR>
nnoremap <space>gl :!tig<CR>

" Filetype specific options

" correct the .md file extension to be Markdown file
autocmd BufNewFile,BufRead *.md set filetype=markdown

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
"
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
    " correct spelling mistakes
    set spell spelllang=pl,en
    " Align GitHub-flavored Markdown tables
    vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>
    " make sure that the filetype is set to Markdown
endif

set nowrap
