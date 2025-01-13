call plug#begin()
Plug 'puremourning/vimspector'
" Superdupersmartautocomplete (NOT intellisence since that's a Microsoft trademark)
""  Plug 'ycm-core/YouCompleteMe'

" File Navigation
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'

"Plug 'jistr/vim-nerdtree-tabs'

" Code Navigation
Plug 'ubaldot/vim-outline'
Plug 'preservim/tagbar'	"Requires universal-ctags for multi-language support

" Syntax highlighting
Plug 'bfrg/vim-c-cpp-modern'

" More colors
Plug 'rafi/awesome-vim-colorschemes'

" C/C++
" Better Automatic Folding
Plug 'LucHermitte/lh-vim-lib'
Plug 'LucHermitte/VimFold4C'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Sublime-text-Style Multi-cursors
Plug 'mg979/vim-visual-multi'

" Running and Debugging
" Plug 'puremourning/vimspector'
Plug 'mklabs/vim-cowsay'

" Session Managemnet
Plug 'xolox/vim-session'

" Cool UI/UX
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'mhinz/vim-startify'
Plug 'voldikss/vim-floaterm'
Plug 'xolox/vim-misc'

call plug#end()

set foldcolumn=1
set foldmethod=syntax
let g:tagbar_ctags_bin='/opt/homebrew/bin/ctags'
"let g:nerdtree_tabs_open_on_console_startup=1

set number
set relativenumber
set signcolumn=yes


""" Keybinds
nnoremap ; :wincmd p<CR>

"nnoremap n :NERDTreeFocus<CR>
" File Navigation
nnoremap <F1> :NERDTreeFind<CR>
nnoremap <F2> :NERDTreeToggle<CR>

nnoremap <C-w><C-h> :History<CR> 
":echo 'Searching VIM History...'
nnoremap <C-w><C-j> :Lines<CR> 
":echo 'Searching All Open File...'
nnoremap <C-w><C-k> :BLines<CR> 
":echo 'Searching File...'
nnoremap <C-w><C-l> :Files<CR> 
":echo 'Searching Tags...'
nnoremap <C-f> :Files<CR> 
":echo 'Searching Project Directory...'

" Time Navigation
" <C-o> prev jump
" <C-i> post jump
nnoremap <C-s> :GFiles?<CR> :echo 'Changes since last commit...'

"nnoremap n :NERDTreeTabsFocus<CR>
"nnoremap <F1> :NERDTreeTabsFind<CR>
"nnoremap <F2> :NERDTreeTabsToggle<CR>


"nnoremap o :OutlineGoToOutline<CR>
"nnoremap <F12> :OutlineToggle<CR>
"nnoremap <F11> :OutlineRefresh<CR>


"nnoremap o :OutlineGoToOutline<CR>
" Code Navigation
nnoremap <F11> :TagbarToggle<CR>
nnoremap <F12> :TagbarOpenAutoClose<CR>

"nnoremap <F11> :OutlineRefresh<CR>
"


" File navigation
nnoremap <C-k> 5k
nnoremap <C-j> 5j
nnoremap <C-h> 5h
nnoremap <C-l> 5l

" Not in OSX
"nnoremap <ALT-k> 10k
"nnoremap <ALT-j> 10j
"nnoremap <ALT-h> 10h
"nnoremap <ALT-l> 10l

nnoremap <Up> 20k
nnoremap <Down> 20j
nnoremap <Left> 20h
nnoremap <Right> 20l

" Not in OSX
"nnoremap <ALT-Up> 40k
"nnoremap <ALT-Down> 40j
"nnoremap <ALT-Left> 40h
"nnoremap <ALT-Right> 40l

" Not on OSx
"nnoremap <C-Up> 80k
"nnoremap <C-Down> 80j
"nnoremap <C-Left> 80h
"nnoremap <C-Right> 80l


" Debugger mappings
"nnoremap <F7> :call vimspector#RunToCursor()<CR>
"nnoremap <F8> <Plug>VimspectorBalloonEval 
"nnoremap <F9> :call vimspector#ToggleBreakpoint()<CR>
"nnoremap <F10> :call vimspector#ToggleAdvancedBreakpoint()<CR>

"nnoremap <C-0> :call vimspector#JumpToProgramCounter()<CR>
"nnoremap <C-9> :call vimspector#GoToCurrentLine()<CR>
"
"nnoremap <C-d> <Up> :call vimspector#UpFrame()<CR>
"nnoremap <C-d> <Down> :call vimspector#DownFrame()<CR>
"nnoremap <C-d> <Right> :call vimspector#Continue()<CR>
"nnoremap <C-d> <Left> :call vimspector#StepOut()<CR>

colorscheme happy_hacking

" Advanced features
nnoremap <C-Bslash> :FloatermToggle<CR>
nnoremap <C-,> :YcmDiags<CR>

nnoremap <C-T> :term meson test<CR>
nnoremap <C-B> :term ++shell meson compile -C builddir && ./builddir/game<CR>
nnoremap <Space>r :call vimspector#Launch()<CR>
nnoremap <Space>d :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Space>q :q<CR>
nnoremap <Space>w :wq<CR>
let g:workspace_autocreate = 1
let g:workspace_session_name = 'Session.vim'
" let g:ycm_max_diagnostics_to_display=0

" nnoremap <C-P> :term meson compile --preprocess -C builddir<CR>

" let g:vimspector_enable_mappings='HUMAN'
" let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB' ]

let g:ale_fix_on_save = 1
let b:ale_linters = ['rustc', 'rls']
let g:ale_sign_warning = '⚠️ '
let g:ale_sign_error = '🛑'
