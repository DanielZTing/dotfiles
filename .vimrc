" Enable syntax highlighting
syntax on

" Set color scheme to gruvbox
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
let g:gruvbox_italic=1
colorscheme gruvbox

" Visual guide at 72 characters
set colorcolumn=72

" Highlight searches as you type
set incsearch

" Display line numbers
set number

" Turn on auto indentation
filetype plugin indent on

" Set tab width to 4 spaces
set tabstop=4

" Make indent correspond to single tab
set shiftwidth=4

" Have tabs insert 4 spaces
set softtabstop=4

" Make tab key expand to next tab stop
set expandtab

" Enable mouse integration in all modes
set mouse=a

" Hard wrap lines to 72 characters
set textwidth=72

" Hide mode at bottom which Airline shows anyways
set noshowmode

" Remove delay when switching between modes
set ttimeoutlen=50

" Allow switching buffers without saving
set hidden

" Strip trailing whitespace on save
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
