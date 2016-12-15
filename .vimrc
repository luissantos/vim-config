set nocompatible  
set spell  

" To disable a plugin, add it's bundle name to the following list
let g:pathogen_disabled = ["vdebug","phpcomplete-extended"]

call pathogen#incubate()
call pathogen#helptags()

syntax on
filetype plugin on
filetype indent on

set mouse=a
set t_Co=256
set nu
set tabstop=4 shiftwidth=4 expandtab
set backspace=indent,eol,start  " backspace for dummys
set linespace=0                 " No extra spaces between rows

set nowrap                      " wrap long lines
set autoindent                  " indent at the same level of theprevious line
set cursorline
set completeopt=longest,menuone
"set lazyredraw



"Ctrl+c copies the data to clipboard (+xterm_clipboard) 
vmap <C-C> "+y                  

if has('gui_running')
    set background=light
else
    set background=dark
endif

" solarized options 
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termcolors = 256
colorscheme solarized

autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

let g:SuperTabDefaultCompletionType = "context"


"imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>


"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif



"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'solarized'

noremap <leader>o <Esc>:CommandT<CR>
noremap <leader>O <Esc>:CommandTFlush<CR>
noremap <leader>m <Esc>:CommandTBuffer<CR>

let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

au BufRead,BufNewFile *.twig set filetype=html.twig

au BufRead,BufNewFile *.pu set filetype=plantuml
au BufRead,BufNewFile *.uml set filetype=plantuml
au BufRead,BufNewFile *.plantuml set filetype=plantuml
au BufRead,BufNewFile *.pp set filetype=puppet
au BufNewFile,BufRead *.markdown setfiletype octopress
au BufRead,BufNewFile *.md setlocal spell
au BufRead,BufNewFile *.markdown setlocal spell

set complete+=kspell


let g:phpcomplete_index_composer_command='composer'
autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP

let g:vdebug_options = { 'port': 9000 , 'server' : '0.0.0.0' }

"source ~/.vim_xdebug_remote 


map <F2> :!xmllint --format - <CR>

