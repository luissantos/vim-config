call pathogen#incubate()
call pathogen#helptags()

syntax on
filetype plugin indent on
set mouse=a

autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

let g:SuperTabDefaultCompletionType = "context"

let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>


autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

