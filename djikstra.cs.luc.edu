" BASICS {{{

"Disable compatibility with vi which can cause unexpected issues.
set nocompatible
" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on
" Enable plugins and load plugin for the detected file type.
filetype plugin on
" Load an indent file for the detected file type.
filetype indent on
" Turn syntax highlighting on.
syntax on
" Add numbers to each line on the left-hand side.
set number
" Highlight cursor line underneath the cursor horizontally.
 set cursorline
" Highlight cursor line underneath the cursor vertically.
 set cursorcolumn


" Set shift width to 4 spaces.
set shiftwidth=4
" Set tab width to 4 columns.
set tabstop=4
"
" Use space characters instead of tabs.
set expandtab
" Do not save backup files.
set nobackup
" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10
" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap
" While searching though a file incrementally highlight matching characters
" as you type.
set incsearch
" Ignore capital letters during search.
set ignorecase
" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase
" Show partial command you type in the last line of the screen.
set showcmd
" Show the mode you are on the last line.
set showmode
" Show matching words during a search.
set showmatch
" Use highlighting when doing a search.
set hlsearch
" Set the commands to save in history default number is 20.
set history=1000


" Enable auto completion menu after pressing TAB.
set wildmenu
" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest
" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set foldmethod=indent
set foldlevel=99

" relative line numbers
set relativenumber

" keywordprg with K key
set keywordprg=/~/cs/help/help.sh 
"
" }}}


" COLORS {{{

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
""If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more
"information.)
if (empty($TMUX))
    if (has("nvim"))
        "For Neovim 0.1.3 and 0.1.4 <
        " https://github.com/neovim/neovim/pull/2198 
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    " For Neovim > 0.1.5 and Vim > patch 7.4.1799 
    " https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 
    " Based on Vim patch 7.4.1770 (`guicolors` option) 
    " https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
    " https://github.com/neovim/neovim/wiki/Following-HEAD#20160511

    if (has("termguicolors"))
        set termguicolors
    endif
endif

colo gruvbox
set background=dark


" }}}


" PLUGINS {{{

" Plugin code goes here.

" }}}


" MAPPINGS {{{

" Mappings code goes here.

" Type jj to exit insert mode quickly.
inoremap ii <Esc>

" Press the space bar to type the : character in command mode.
nnoremap <space> :

" Pressing the letter o will open a new line below the current one.
" Exit insert mode after creating a new line above or below the current line.
nnoremap o o<esc>
nnoremap O O<esc>
nnoremap <C-o> o<esc>O<esc>

nnoremap <Left> i 
nnoremap <Right> i
nnoremap <Up> i
nnoremap <Down> i 

nnoremap L $
nnoremap H ^

" clear
nnoremap cl ddO<esc>
" delete to start
nnoremap ds d0
" delete to end
nnoremap de D
" yank to start
nnoremap ys y0
" yank to end
nnoremap ye y$

" w moves fwd by words ... W moves bck by words
nnoremap W b
nnoremap E bbE


" jump to ( ) [ ]
nnoremap ) f)
nnoremap ( F(
nnoremap <f9> F[
nnoremap <f10> f]

nnoremap <f12> "+p

nnoremap # I# <esc>j
nnoremap s a<CR><esc>
nnoremap S i<CR><esc>

" isort
nnoremap <f1> :w <CR>:!clear <CR>:!isort % ; isort -fss % <CR> 
" black <file> on <f2>
nnoremap <f2> :w <CR>:!clear <CR>:!black -l 100 % <CR> 

"p the F3 key to run a Python script inside Vim.
    " We map F3 to a chain of commands here.
    " :w saves the file.
    " <CR> (carriage return) is like pressing the enter key.
    " !clear runs the external clear screen command.
    " python3 % executes the current file with Python.
nnoremap <f3> :w <CR>:!clear <CR>:!python3 % <CR>

" pull
nnoremap <f4> :w <CR>:!clear;git pull;<CR> 
" push
nnoremap <f5> :w <CR>:!clear;git add -A; git commit -m deploy; git push;<CR> 

" copy and paste like keyboard
noremap cc "+
nnoremap C "+
noremap cx "+d
nnoremap cp "+p
nnoremap cP "+P


" if name is main
inoreabbrev ifm if __name__ == '__main__': <CR>main()<esc>k
" define func
iab  def def _():<CR>"""docstring"""<CR><esc>kkcaw
" class
inoreabbrev class class _():<CR>"""docstring"""<CR><CR>def __init__(self, ):<esc>3k^wcaw
" deco uses trick to copy abbrev
" iabbrev deco <esc>:normal adef _<CR>A<Left><Left>func=None,*,<esc>jL2o<esc>:normal adef decorator<CR>A

" dunder
inoremap __ ____<Left><Left>
" get out
























" }}}


" VIMSCRIPT {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
autocmd!
autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


"STATUS LINE {{{

" Status bar code goes here.

" }}}


" AUTOCMD {{{
"
autocmd BufRead,BufNewFile   *.md setlocal wrap linebreak
"
"
" }}}
"
"
