" Guide to Python and Vim: 
" https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Be sure to source (:so ~/.vimrc) before running :PluginInstall

" Search plugins with command :PluginSearch!
" List plugins with command :PluginList
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on    " required

" Because Syntastic has annoying messages
let g:syntastic_quiet_messages = { 'regex': 'F841\|F405\|F401\|F403\|E711\|E712\E731' }

" SimpylFold enable viewing docstrings for folded code
" let g:SimpylFold_docstring_preview=1

" I dont think YCM works with macvim
let g:ycm_server_python_interpreter='python2'

" YouCompleteMe with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" Python Auto pastetoggle
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

highlight BadWhitespace ctermbg=red guibg=darkred

syntax on
set ruler
set background=dark
set backspace=eol,indent,start
set number
set vb
set foldmethod=indent
set foldlevel=99
" set mouse=a 	" allows using mouse to click in vim, but prohibits copying from vim
" set paste	" allows pasting without formatting

" don't highlight the last search upon startup
" set viminfo="h"

" Required values
set smartindent
set autoindent
set smarttab
set shiftwidth=4

" My Autocommands
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set fileformat=unix |
    \ set encoding=utf-8

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

au BufRead,BufNewFile *.js,*.html,*.css
    \ set tabstop=2 |
    \ set shiftwidth=2

" autocmd BufNewFile *.cpp	0r ~/DO_NOT_DELETE.cpp

inoremap {<CR> {<CR>}<Esc><Up>o
nnoremap <space> za

" uncomment to use a different color map
":hi Comment   term=bold cterm=NONE ctermfg=Blue ctermbg=NONE gui=NONE guifg=Blue guibg=NONE
":hi Constant  term=underline cterm=NONE ctermfg=Red ctermbg=NONE gui=NONE guifg=Magenta guibg=NONE
":hi Special   term=bold cterm=NONE ctermfg=Magenta ctermbg=NONE gui=NONE guifg=SlateBlue guibg=NONE
":hi Identifier   term=underline cterm=NONE ctermfg=Cyan ctermbg=NONE gui=NONE guifg=Cyan guibg=NONE
":hi Statement term=bold cterm=NONE ctermfg=Yellow ctermbg=NONE gui=bold guifg=Brown guibg=NONE
":hi PreProc   term=underline cterm=NONE ctermfg=Magenta ctermbg=NONE gui=NONE guifg=Purple guibg=NONE
":hi Type      term=underline cterm=NONE ctermfg=Green ctermbg=NONE gui=bold guifg=SeaGreen guibg=NONE
":hi Underlined   term=underline cterm=underline ctermfg=Magenta gui=underline guifg=SlateBlue
":hi Ignore term=NONE cterm=NONE ctermfg=white ctermbg=NONE gui=NONE guifg=bg guibg=NONE

"Tell you if you are in insert mode
set showmode

"match parenthesis, i.e. ) with (  and } with {
set showmatch

"ignore case when doing searches
set ignorecase

"tell you how many lines have been changed
set report=0

" map! is for maping of keys in insert mode
" map is for maping of keys in command mode 
"####################################################
"sun 4 keypad stuff 
"for instert mode 
map! Ok +
map! Om -
map! OM 
map! [2~   0
"for command mode 
map [2~ i
map OM 
map Ok +
map Om -

"#####################################################
"other sun4 keyboard stuff 
" map F1   indent 2 spaces
map [11~ I  
"map F2   indent 2 spaces  go down to next line
map [12~ I   OB
"UNDO to  u
map [26~ u 
" OPEN to o
map [31~ o
" map FIND to /
map [33~  /
"
map [29 ~yy
map [32~ p
map [24~ .

"#####################################################
" the following are the vt102 number pad keys 
" map 8 to UP-arrow ,4 to LEFT-arrow, 6 to RIGHT-arrow,2 to DOWN-arrow
" map 1 to down-left   3 to down-right 9 to up-right 7 to up-left
"#keypad  6
map! Ov  
map Ov l
"#keypad  4
map! Ot 
map Ot h
"#keypad  2
map! Or j
map Or j
"#keypad  8
map! Ox k
map Ox k
map Ow kh
map Os jl
map Oq hj
map Oy lk
"map 5 to goto first line 
map Ou :1 
"map 0 to goto last line
map Op :$ 
map On :!
map [24~ :ex:$
map OD 
map Ot 
map ; :
map W  :wq 
map Q  :q 
"-------------------------------------------
