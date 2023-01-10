call plug#begin('~/.config/nvim/plugged')

" Colorschemes
Plug 'flazz/vim-colorschemes'

" Syntax highlighting
Plug 'ehamberg/vim-cute-python', {'branch': 'moresymbols'} " Fancy conceal

" Python-specific
Plug 'roxma/python-support.nvim'
Plug 'ambv/black'

" Syntax checker
Plug 'w0rp/ale'

" Completions for rust
Plug 'racer-rust/vim-racer'


call plug#end()


" Ignore line too long error and specific hanging indent error
let g:ale_python_flake8_args="--ignore=E501,E128"

let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'flake8')
let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'python-language-server')
let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'mypy')
let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'jedi')
let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'pyls-mypy')

" Language server configurations
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ }

set number
colorscheme up
