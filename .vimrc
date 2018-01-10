set nocompatible              " required
filetype off                  " required
:color desert
let leader = ","
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"set foldmethod=syntax
set foldmethod=indent
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/syntastic'
Plugin 'honza/vim-snippets'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
" All of your Plugins must be added before the following line
call vundle#end()            " required

"let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

"syntastic
"let g:syntastic_debug=3
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++14 '

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
" clang-format
"let g:clang_library_path='/usr/lib/x86_64-linux-gnu/libclang-3.8.so.1'
""
map <C-K> :pyf /usr/share/vim/addons/syntax/clang-format.py<cr>
imap <C-K> <c-o>:pyf /usr/share/vim/addons/syntax/clang-format.py<cr>
"" YouCompleteMe options
"
"
"let g:ycm_register_as_syntastic_checker = 1 "default 1
"let g:Show_diagnostics_ui = 1 "default 1
"
""will put icons in Vim's gutter on lines that have a diagnostic set.
"Turning this off will also turn off the YcmErrorLine and YcmWarningLine
""highlighting
"let g:ycm_enable_diagnostic_signs = 1
"let g:ycm_enable_diagnostic_highlighting = 0
"let g:ycm_always_populate_location_list = 1 "default 0
"let g:ycm_open_loclist_on_ycm_diags = 1 "default 1

"let g:ycm_complete_in_strings = 1 "default 1
"let g:ycm_collect_identifiers_from_tags_files = 0 "default 0
"let g:ycm_path_to_python_interpreter = '' "default ''

"let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
"let g:ycm_server_log_level = 'info' "default info

"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'  "where to search for .ycm_extra_conf.py if not found
"let g:ycm_confirm_extra_conf = 1

"let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
"let g:ycm_filetype_whitelist = { '*': 1 }
"let g:ycm_key_invoke_completion = '<C-Space>'

"nnoremap <F11> :YcmForceCompileAndDiagnostics <CR>

filetype plugin indent on    " required
set nowrap
set number

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Enable folding
set foldmethod=indent
set foldlevel=99

nnoremap <space> za
let g:SimpylFold_docstring_preview=1
"settings for python
"
au BufNewFile,BufRead *.cpp,*.h,*.cc
    \ set tabstop=2 |
    \ set softtabstop=2 | 
    \ set shiftwidth=2 | 
    \ set textwidth=80| 
    \ set expandtab | 
    \ set autoindent | 
    \ set fileformat=unix | 

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 | 
    \ set shiftwidth=4 | 
    \ set textwidth=80| 
    \ set expandtab | 
    \ set autoindent | 
    \ set fileformat=unix | 
"settigs for html
au BufNewFile,BufRead *.js, *.html, *.css :
    \ set tabstop=2 | 
    \ set softtabstop=2 | 
    \ set shiftwidth=2 | 

"define BadWhitespace before using in a match
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
set encoding=utf-8


"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF

