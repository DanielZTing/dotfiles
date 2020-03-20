" Enable syntax highlighting
syntax on

" Set color scheme to Solarized Dark
colorscheme solarized

" Visual guide at 72 characters
set colorcolumn=72

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

" Strip trailing whitespace on save
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
