call plug#begin()
Plug 'kien/rainbow_parentheses.vim'         " Highlight () [] {}
Plug 'puremourning/vimspector'              " Run Manager
" Superdupersmartautocomplete (NOT intellisence since that's a Microsoft trademark)
" Plug 'ycm-core/YouCompleteMe'               " Microsoft Style Intellicense
Plug 'dense-analysis/ale'                   " Code Checking
Plug 'urbainvaes/vim-tmux-pilot'            " Tmux Integration

" File Navigation
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " File and Buffer Searching
Plug 'junegunn/fzf.vim'
Plug 'sstallion/vim-cursorline'             " Sublime-Style Multicursor support (Doesn't work with tmux)
Plug 'myusuf3/numbers.vim'              " Switch between relative & absolute line #s when switching splits

" Code Navigation
Plug 'ubaldot/vim-outline'              " purdy ctags
Plug 'preservim/tagbar'                 "Requires universal-ctags for multi-language supportPlug 'junegunn/goyo.vim'

" Syntax highlighting
Plug 'bfrg/vim-c-cpp-modern'

" More colors
Plug 'rafi/awesome-vim-colorschemes'
Plug 'pineapplegiant/spaceduck'

" C/C++
" Better Automatic Folding
Plug 'LucHermitte/lh-vim-lib'
Plug 'LucHermitte/VimFold4C'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Sublime-text-Style Multi-cursors

" Running and Debugging
" Plug 'puremourning/vimspector'
" Plug 'mklabs/vim-cowsay'

" Session Managemnet
Plug 'xolox/vim-session'                " Workspace Manager

" Cool UI/UX
Plug 'vim-airline/vim-airline'              " UI/UX
Plug 'vim-airline/vim-airline-themes'

Plug 'mhinz/vim-startify'               " Splash Screen
Plug 'voldikss/vim-floaterm'                " Popup terminal in the center
Plug 'xolox/vim-misc'
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " Clones insertions across lines in visual mode
Plug 'aserebryakov/vim-todo-lists'          " Add .todo.md files

Plug 'junegunn/goyo.vim'                " Zen Mode

Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'           " Automatic Window Animation


call plug#end()
let g:lens#disabled = 0
let g:lens#animate = 1


set foldcolumn=1
set foldmethod=syntax
let g:tagbar_ctags_bin='/opt/homebrew/bin/ctags'
"let g:nerdtree_tabs_open_on_console_startup=1

set number
set relativenumber
set signcolumn=yes


""" Keybinds
nnoremap <Space><CR> :source ~/.vimrc<CR>:echo 'Refreshed ~/.vimrc ✨✨✨ ԅ(≖‿≖ԅ)'<CR>
nnoremap <Space>1 :RainbowParenthesesToggleAll<CR>
nnoremap <Space>0 :Goyo<CR>
nnoremap ; :wincmd p<CR>

"nnoremap n :NERDTreeFocus<CR>
" File Navigation
nnoremap <F1> :NERDTreeFind<CR>
nnoremap <F2> :NERDTreeToggle<CR>

nnoremap <C-f> :Lines<CR>
nnoremap <C-g> :Files<CR>

" Time Navigation
" <C-o> prev jump
" <C-i> post jump
" nnoremap <C-s> :GFiles?<CR> :echo 'Changes since last commit...'

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
" nnoremap <C-k> 5k
" nnoremap <C-j> 5j
" nnoremap <C-h> 5h
" nnoremap <C-l> 5l

" Not in OSX
"nnoremap <ALT-k> 10k
"nnoremap <ALT-j> 10j
"nnoremap <ALT-h> 10h
"nnoremap <ALT-l> 10l

"nnoremap <Up> 20k
"nnoremap <Down> 20j
"nnoremap <Left> 20h
"nnoremap <Right> 20l

nnoremap <silent> <Up>    :call animate#window_delta_height(10)<CR>
nnoremap <silent> <Down>  :call animate#window_delta_height(-10)<CR>
nnoremap <silent> <Left>  :call animate#window_delta_width(10)<CR>
nnoremap <silent> <Right> :call animate#window_delta_width(-10)<CR>


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
nnoremap <Space>b :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Space>ab :call vimspector#ToggleAdvancedBreakpoint()<CR>


nnoremap <Space>h :call vimspector#StepOut()<CR>
nnoremap <Space>j :call vimspector#StepOver()<CR>
nnoremap <Space>k :call vimspector#ClearBreakpoints()<CR>
nnoremap <Space>l :call vimspector#Continue()<CR>

"nnoremap <C-0> :call vimspector#JumpToProgramCounter()<CR>
"nnoremap <C-9> :call vimspector#GoToCurrentLine()<CR>
"
"nnoremap <C-d> <Up> :call vimspector#UpFrame()<CR>
"nnoremap <C-d> <Down> :call vimspector#DownFrame()<CR>
"nnoremap <C-d> <Right> :call vimspector#Continue()<CR>
"nnoremap <C-d> <Left> :call vimspector#StepOut()<CR>

"colorscheme happy_hacking
colorscheme spaceduck

" Advanced features
nnoremap <C-Bslash> :FloatermToggle<CR>

nnoremap <C-T> :term meson test<CR>
nnoremap <C-B> :term ++shell meson compile -C builddir && ./builddir/game<CR>
nnoremap <C-s> :w<CR>:echo "Saved"<CR>
nnoremap <Space>r :call vimspector#Launch()<CR>
nnoremap <Space>y :call vimspector#Restart()<CR>
nnoremap <Space>d :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Space>q :q<CR>
nnoremap <Space>e :q!<CR>
nnoremap <Space>w :wq<CR>
nnoremap <Space>t :VimTodoListsToggleItem<CR>


function! ListKeybinds()
    echo "<Space>1           = Toggle Bracket Highlighting"
    echo "<Space>0           = Toggle Zen Mode"
    echo "<C-f>           = Search Buffer"
    echo "<C-g>           = Search Files"
    echo "<C-o>           = Go to Previous Jump"
    echo "<;>             = Go to Previous Split"

    echo "<C-k>           = Move Up Tmux"
    echo "<C-j>           = Move Down Tmux"
    echo "<C-h>           = Move Left Tmux"
    echo "<C-l>           = Move Right Tmux"

    echo "<Up>            = Move 20 Up"
    echo "<Down>          = Move 20 Down"
    echo "<Left>          = Move 20 Left"
    echo "<Right>>        = Move 20 Right"

    echo "<F1>      = Focus Filesystem Tree"
    echo "<F2>      = Toggle Filesystem Tree"
    echo "<Space><CR>   = Reload ~/.vimrc"

    echo "<F11>             = Toggle File Outline"
    echo "<F12>             = Focus File Outline"
    echo "<Space>d  = Toggle Breakpoint"
    echo "<Space>b  = Toggle Breakpoint"
    echo "<Space>ab     = Toggle Conditional Breakpoint"

    echo "<Space>r  = Begin Launch"
    echo "<Space>d  = Toggle Breakpoint"
    echo "<Space>b  = Toggle Breakpoint"
    echo "<Space>ab     = Toggle Conditional Breakpoint"


    echo "<Space>h  = Debugger Step Out"
    echo "<Space>j  = Debugger Step Over"
    echo "<Space>k  = Clear All Breakpoints"
    echo "<Space>l  = Debugger Continue"

    echo "<Space>q  = Quit"
    echo "<Space>e  = Force Quit"
    echo "<Space>w  = Write & Quit"

    echo "<Space>w  = Write & Quit"


    echo "<Space><CR>   = Toggle TODO item"
    echo "<Space>t        = Toggle TODO item"


    echo "<C-\\>        = Toggle Floating Terminal"
    echo "<C-w>N        = Enter Normal Mode in Terminal Mode"
endfunction


command! Keys :call ListKeybinds()

let g:workspace_autocreate = 1
let g:workspace_session_name = 'Session.vim'

" nnoremap <C-P> :term meson compile --preprocess -C builddir<CR>

" let g:vimspector_enable_mappings='HUMAN'
" let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB' ]

let g:ale_fix_on_save = 1
"let g:ale_linters = ['rustc', 'rls']
let g:ale_fixers = {
   \   '*': ['remove_trailing_lines', 'trim_whitespace']
           \}
let g:ale_sign_warning = '⚠️ '
let g:ale_sign_error = '🛑'
"let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
"let g:ale_completion_enabled = 1
"set omnifunc=ale#completion#OmniFunc
"set completeopt=menuone,noselect


" Uncomment to enable navigation of vim tabs
let g:pilot_mode='winonly'

" Uncomment to enable creation of vim splits automatically
let g:pilot_boundary='create'

" Uncomment to use the modifier `Alt` instead of `Control`
" let g:pilot_key_h='<a-h>'
" " let g:pilot_key_j='<a-j>'
" " let g:pilot_key_k='<a-k>'
" " let g:pilot_key_l='<a-l>'
" " let g:pilot_key_p='<a-\>'
"
"
set expandtab
set tabstop=4

function! OnWrite()
        YcmDiags
        retab
endfunction

"autocmd BufWritePost * :YcmDiags
"
let g:lens#disabled_filetypes = ['nerdtree', 'fzf', 'tagbar']

set cursorline
highlight CursorLine ctermbg=241
