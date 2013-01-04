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

set foldmethod=indent
set nofoldenable

colorscheme molokai
set guifont=terminus

map <leader>n :NERDTreeToggle<enter>
map <leader>s :w<enter>:SyntasticCheck<enter>:Errors<enter>


let g:SuperTabMappingForward = '<c-space>'
let g:SuperTabMappingBackward = '<s-c-space>'
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['ruby', 'php'],
                           \ 'passive_filetypes': ['puppet', 'java', 'c'] }

let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4
autocmd FileType ruby   setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
