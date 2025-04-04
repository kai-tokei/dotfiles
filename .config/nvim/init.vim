set number

inoremap <silent> jk <ESC>
set expandtab
set tabstop=4
set shiftwidth=2

let g:mail='rmurakam@student.42tokyo.jp'
let g:user='rmurakam'

colorscheme hybrid

set pumblend=10
set list listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

imap <silent> <C-T><C-T> <C-R>=strftime("📅%Y-%m-%d-%a")<CR>
nmap <silent> <C-T><C-T> <ESC>i<C-R>=strftime("📅%Y-%m-%d-%a")<CR><CR><ESC>

imap <silent> <C-N><C-N> <C-R>=strftime("🕒%H:%M:%S")<CR>
nmap <silent> <C-N><C-N> <ESC>i<C-R>=strftime("🕒%H:%M:%S")<CR><CR><ESC>

