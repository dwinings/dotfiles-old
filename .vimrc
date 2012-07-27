call pathogen#infect()
call pathogen#helptags()
set autoindent
set number
set showcmd
set mouse=a
set ts=2
set sw=2
set expandtab
set foldmethod=manual
set number
filetype plugin indent on
set ofu=syntaxcomplete#Complete
:highlight Pmenu ctermbg=brown gui=bold
syntax on
colorscheme molokai
map <leader>n :NERDTreeToggle<enter>


autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4
