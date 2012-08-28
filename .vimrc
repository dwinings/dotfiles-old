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

set listchars=tab:>.,trail:.
set list


filetype plugin indent on
set ofu=syntaxcomplete#Complete
:highlight Pmenu ctermbg=brown gui=bold
syntax on
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
map <leader>n :NERDTreeToggle<enter>

let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['ruby', 'php'],
                           \ 'passive_filetypes': ['puppet', 'java', 'c'] }

autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4
