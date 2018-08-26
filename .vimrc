set exrc
set secure

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

set colorcolumn=110
highlight ColorColumn ctermbg=darkgray
autocmd VimEnter * NERDTree
let &path.="src/include,/usr/include/AL,"
set number
call plug#begin()
Plug 'tpope/vim-sensible'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Make sure you use single quotes
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
 Plug 'junegunn/vim-easy-align'
"
" " Any valid git URL is allowed
 Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
" " Multiple Plug commands can be written in a single line using | separators
 Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
" " On-demand loading
 Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
" " Using a non-master branch
 Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"
" " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
 Plug 'fatih/vim-go', { 'tag': '*' }
"
" " Plugin options
 Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
" " Plugin outside ~/.vim/plugged with post-update hook
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
" " Unmanaged plugin (manually installed and updated)
 Plug '~/my-prototype-plugin'

" " Initialize plugin system
 Plug 'https://github.com/vim-scripts/a.vim.git'
 Plug 'scrooloose/nerdcommenter'
 ""
 Plug 'https://github.com/ervandew/supertab.git'
 Plug 'https://github.com/majutsushi/tagbar.git'
 ""
 Plug 'https://github.com/vim-airline/vim-airline.git'
 Plug 'https://github.com/Townk/vim-autoclose.git'
 Plug 'https://github.com/tpope/vim-fugitive.git'
 Plug 'https://github.com/airblade/vim-gitgutter.git'
 Plug 'terryma/vim-multiple-cursors'
 Plug 'sheerun/vim-polyglot'
 Plug 'https://github.com/octol/vim-cpp-enhanced-highlight.git'

call plug#end()

syntax on
colorscheme onedark

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

let g:multi_cursor_use_default_mapping=0

" Default mapping
 let g:multi_cursor_start_word_key      = '<C-n>'
 let g:multi_cursor_select_all_word_key = '<A-n>'
 let g:multi_cursor_start_key           = 'g<C-n>'
 let g:multi_cursor_select_all_key      = 'g<A-n>'
 let g:multi_cursor_next_key            = '<C-n>'
 let g:multi_cursor_prev_key            = '<C-p>'
 let g:multi_cursor_skip_key            = '<C-x>'
 let g:multi_cursor_quit_key            = '<Esc>'
 let g:airline_theme='onedark'
 let g:cpp_class_scope_highlight = 1
 let g:cpp_member_variable_highlight = 1
 let g:cpp_class_decl_highlight = 1
 let g:cpp_experimental_template_highlight = 1
 let g:cpp_concepts_highlight = 1
 let g:cpp_no_function_highlight = 1
 let c_no_curly_error=1

 :set mouse=a
