"------------------------Vundle------------------------------
set nocompatible	" be iMproved, required
filetype off		" required
execute pathogen#infect()

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"---------------------Vundle plugin-list---------------------
" ---utility
Plugin 'easymotion/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'chusiang/vim-sdcv'
Plugin 'vimspell'

" ---file management
Plugin 'scrooloose/nerdtree'

" ---autocomplete
Plugin 'vim-scripts/L9'
Plugin 'othree/vim-autocomplpop'

" ---color scheme
Plugin 'junegunn/seoul256.vim'
" Plugin 'fugalh/desert.vim'

" ---git diff
Plugin 'airblade/vim-gitgutter'

" ---developement
Plugin 'Townk/vim-autoclose'
Plugin 'tomtom/tcomment_vim'
Plugin 'bling/vim-airline'
Plugin 'luochen1990/rainbow'
Plugin 'Yggdroot/indentLine'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'majutsushi/tagbar'
Plugin 'michaeljsmith/vim-indent-object'

" ---syntax highlight and detection
Plugin 'scrooloose/syntastic'

" ---Python
Plugin 'klen/python-mode'
" Plugin 'davidhalter/jedi-vim'
" Plugin 'd11wtq/tomorrow-theme-vim'
" Plugin 'tomasr/molokai'

" ---C/C++
 Plugin 'Lee-W/c.vim'
" Plugin 'vim-jp/cpp-vim'
" Plugin 'octol/vim-cpp-enhanced-highlight'
" Plugin 'rhysd/vim-clang-format'
" Due to use XPTemplate for C & Python

" ---Java
" Plugin 'adragomir/javacomplete'
" Plugin 'tfnico/vim-gradle'

"  Web
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'othree/vim-javascript-syntax'
Plugin 'mattn/emmet-vim'
Plugin 'lukaszb/vim-web-indent'

" Jade
Plugin 'digitaltoad/vim-jade'

" Stylus
Plugin 'wavded/vim-stylus'

" LiveScript
" Plugin 'gkz/vim-ls'

" Perl
" Plugin 'vim-perl/vim-perl'

" Document
Plugin 'plasticboy/vim-markdown'
Plugin 'godlygeek/tabular'


" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" ---------------------General setting---------------------
syntax on
set nu
set autoindent
set cindent
set smartindent
set hlsearch
set noexpandtab
set nocompatible
set wrap
set wildmenu
set backupdir=~/tmp,.,/var/tmp/vi,/tmp
set directory=~/tmp,/var/tmp/vi,/tmp,.
set backup		" keep a backup file
set backupcopy=yes " for brunch
set shiftwidth=4
set tabstop=4
set bs=2		" allow backspacing over everything in insert mode
set ai			" always set autoindenting on
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
set showmatch
set history=50              "保留 50 個使用過的指令
set t_Co=256                "Explicitly tell Vim that the terminal supports 256 colors
set ruler                   "顯示最後一行的狀態
set laststatus=2   " Always show the statusline
set undofile   " Maintain undo history between sessions "

"---------------------Encoding---------------------
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

"---------------------Color scheme---------------------
" Settings for seoul256
let g:seoul256_background = 233
colo seoul256

hi Comment ctermfg = lightblue 
set cursorline
set scrolloff=5
hi CursorLine cterm=NONE ctermbg=236
hi CursorColumn cterm=NONE ctermbg=236


" ---theme
" colorscheme desert
" " colorscheme Tomorrow-Night-Eighties
" " colorscheme molokai

"---------------------key binding---------------------

" Open NERDTree
" nmap <F2> :NERDTreeToggle<CR>
"
" sdcv on word
" nmap <F3> :call SearchWord()<CR>
"
" Open spell checking
" nmap <F7> :setlocal spell!<cr>
"
" Close syntax checking
" nmap <F8> :SyntasticToggleMode<CR>
"
" Open tagbar
" nmap <F10> :TagbarToggle<CR>
"
" comment lines
" map ` :TComment<cr>
" vmap ` :TComment<cr>gv
"
" set ctags
" map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" Diff
nnoremap <silent> <C-G>	:diffget<CR>
nnoremap <silent> <C-P>	:diffput<CR>

"----------------------Window---------------------------
nnoremap <silent> <Tab>	:wincmd w<CR>
nnoremap <silent> <C-H>	:wincmd h<CR>
nnoremap <silent> <C-J>	:wincmd j<CR>
nnoremap <silent> <C-K>	:wincmd k<CR>
nnoremap <silent> <C-L>	:wincmd l<CR>
nnoremap <silent> +	:wincmd +<CR>
nnoremap <silent> -	:wincmd -<CR>
nnoremap <silent> <	:wincmd <<CR>
nnoremap <silent> >	:wincmd ><CR>


"---------------------plug-in setting---------------------
" --- XPTemplate
let g:xptemplate_key = '<Tab>'

" --- vim-gitgutter
let g:gitgutter_enabled = 1
highlight clear SignColumn " For the same appearance as your line number column "

" --- vim-spell
set spelllang=en
"autocmd BufRead *.txt,*.md,*.tex setlocal spell

" --- syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 3

" --- vim-markdown
let g:vim_markdown_folding_disabled=1       "disable folding
let g:vim_markdown_initial_foldlevel=1     "set the initial foldlevel
let g:vim_markdown_no_default_key_mappings=1

" --- rainbow
let g:rainbow_active = 1
   let g:rainbow_conf = {
    \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
    \   'ctermfgs': ['red', 'lightblue', 'lightyellow', 'green', 'darkmagenta'],
    \   'operators': '_,_',
    \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
    \   'separately': {
    \       '*': {},
    \       'tex': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
    \       },
    \       'lisp': {
    \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
    \       },
    \       'vim': {
    \           'parentheses': ['start=/(/ end=/)/',
    \                           'start=/\[/ end=/\]/',
    \                           'start=/{/ end=/}/ fold',
    \                           'start=/(/ end=/)/ containedin=vimFuncBody',
    \                           'start=/\[/ end=/\]/ containedin=vimFuncBody',
    \                           'start=/{/ end=/}/ fold containedin=vimFuncBody'],
    \       },
    \       'html': {
    \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
    \       },
    \       'css': 0,
    \   }
    \}

" --- setting taglist
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_Auto_Open = 1

" ---neocomplcache
let g:neocomplcache_enable_at_startup = 1

" ---easymotion
let g:EasyMotion_leader_key = 'f'

" ---c.vim
" filetype plugin on
" disable the header when creatin a C/C++ file
" let g:C_InsertFileHeader = 'no'
" let g:C_CFlags = '-g -O0 -c'
" let g:C_LFlags = '-g -O0'

" --- javacomplete
" autocmd Filetype java setlocal omnifunc=javacomplete#Complete
" autocmd Filetype java map <leader>b :call javacomplete#GoToDefinition()<CR>

" ---python-mode
let g:pymode_python = 'python3'
let g:pymode_indent = 1
let g:pymode_motion = 1
let g:pymode_options_max_line_length = 100
let g:pymode_rope = 0
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'pylint']
au CompleteDone * pclose


"---------------------other---------------------
" ---set paste
if &term =~ "xterm.*"
    let &t_ti = &t_ti . "\e[?2004h"
    let &t_te = "\e[?2004l" . &t_te
    function XTermPasteBegin(ret)
        set pastetoggle=<Esc>[201~
        set paste
        return a:ret
    endfunction
    map <expr> <Esc>[200~ XTermPasteBegin("i")
    imap <expr> <Esc>[200~ XTermPasteBegin("")
    cmap <Esc>[200~ <nop>
    cmap <Esc>[201~ <nop>
endif

" ---Back to the place last edited
if has("autocmd")
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line ("'\"") <= line("$") |
                \   exe "normal g'\"" |
                \ endif
endif

"git commit
autocmd Filetype gitcommit setlocal spell textwidth=72



" vi:sw=4:ts=4
