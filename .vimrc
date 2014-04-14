" reassign nmapleader
let nmapleader = ','

" un-tab in insert mode
imap <S-Tab> <Esc><<i

" do something more interesting with arrow keys
imap <up> <nop>
imap <right> <nop>
imap <down> <nop>
imap <left> <nop>
nmap <up> <nop>
nmap <down> <nop>
nmap <left> <<
nmap <right> >>

" save file as sudo even if vim is not running as root
cmap w!! w !sudo tee > /dev/null %

" vundle
set rtp+=$HOME/.vim/bundle/vundle
filetype off
call vundle#rc()
Bundle 'gmarik/vundle'

" colors
let g:rehash256 = 1
Bundle 'tomasr/molokai'
set t_Co=256
colorscheme molokai

" syntastic
Bundle 'scrooloose/syntastic'
au FileType qf setlocal wrap linebreak
let g:syntastic_auto_loc_list = 1
let g:syntastic_enable_signs = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" airline
Bundle 'bling/vim-airline'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep='>'
let g:airline_right_sep='<'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme = 'monochrome'

" strip trailing whitespace on save
function! <SID>StripTrailingWhitespaces()
    " preparation: save last search, and cursor position.
    let _s=@/
    let l = line('.')
    let c = col('.')
    " do the replacement
    %s/\s\+$//e
    " restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" vim general
syntax on                      " syntax highlighting on
filetype plugin indent on      " change indent behavior based on filetype
set autoread                   " reread a file if changed from the outside
set backspace=indent,eol,start " backspace through anything
set cul                        " highlight the current line
set expandtab                  " turn tab characters into spaces
set encoding=utf-8             " UTF-8 encoding everywhere
set ffs=unix,dos,mac           " Unix is standard filetype
set guioptions-=r              " disable scrollbar
set guioptions-=R              " disable scrollbar
set guioptions-=l              " disable scrollbar
set guioptions-=L              " disable scrollbar
set hlsearch                   " highlight all search matches
set incsearch                  " start searching immediately
set laststatus=2               " better bottom bar
set lazyredraw                 " only redraw when we need to
set nocompatible               " must be vim, not vi
set noerrorbells               " no error bells
set number                     " show line numbers
set ruler                      " show line/character position numbers
set shiftround                 " when indenting, round things off if uneven
set shiftwidth=4               " redindent operators indent 4 spaces
set showcmd                    " show info about the current command
set showmode                   " show the current mode on the bottom bar
set smartindent                " enable automagic C-style indentation
set tabstop=4                  " every tab = 4 spaces
set ttyfast                   " faster terminal connection
set wildmenu                  " better commandline completion
set wildmode=longest,full     " better-looking wildmenu
