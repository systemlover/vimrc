" ---------- Global ----------
execute pathogen#infect()
syntax on
filetype plugin indent on
let mapleader=','
set backspace=indent,eol,start
set relativenumber
set encoding=utf-8
" accelerate writing file
nnoremap <leader>w :w<cr>
" accelerate switching to previous file
nnoremap <leader>bk :b#<cr>

" search
set ignorecase
set smartcase               " works only in ignorecase
set incsearch
set hlsearch
nnoremap <silent> <bs> :nohlsearch<cr>
nnoremap / /\v

" fold
set foldopen=all            " as the cursor enters and leaves them
set foldclose=all

" display
"if has('gui_running')
"    set background=light
"else
"    set background=dark
"endif
"colorscheme solarized
let g:airline_powerline_fonts=1
set matchpairs+=<:>
set cursorline
set cursorcolumn
set colorcolumn=80

" tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
" replace tab with space
set expandtab
autocmd FileType html,css,javascript,typescript setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd FileType python setlocal expandtab

" show invisibles
set list
set listchars=
set listchars+=tab:▓░
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:⣿
" ---------- Global ----------


" ---------- .vimrc ----------
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END
if has('persistent_undo')
    set undofile
    set undodir=$HOME/.VIM_UNDO_FILES
endif
" accelerate editing .vimrc
nnoremap <leader>ev :edit ~/.vimrc<cr>
" ---------- .vimrc ----------


" ---------- NERDTree ----------
" https://github.com/scrooloose/nerdtree
" open a NERDTree automatically when vim starts up
autocmd VimEnter * NERDTree
" set cursor to the West window when opening a file
autocmd VimEnter * if argc() == 1| wincmd w | endif
" close vim if the only window left open is a NERDTree
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <leader>h <c-w>h<cr>
nnoremap <leader>j <c-w>j<cr>
nnoremap <leader>k <c-w>k<cr>
nnoremap <leader>l <c-w>l<cr>
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <c-n> :NERDTreeToggle<cr>
let NERDTreeShowBookmarks=1
nnoremap <leader>bm :Bookmark 
nnoremap <leader>obm :OpenBookmark 
" :Bookmark <name>
" :OpenBookmark <name>
" :ClearBookmarks <name>
" :ClearAllBookmarks
" i split, similar to change to insert mode
" s vsplit
" O recursive open directory
" x close node's parent
" P jump to the root node
" p jump to parent
" B toggle whether bookmark table is displayed
" ---------- NERDTree ----------


" ---------- CtrlP ----------
" https://github.com/kien/ctrlp.vim
" <F5> to purge the cache
" <c-f> and <c-b> to cycle between modes
" <c-d> to switch to filename only search
" <c-v> vertical split, similar to vert sb#
" <c-x> split, similar to sb#
" <c-y> to create a new file
" ---------- CtrlP ----------


" ---------- syntastic ----------
" https://github.com/vim-syntastic/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" ---------- syntastic ----------


" ---------- tagbar ----------
" https://github.com/majutsushi/tagbar
nnoremap <F8> :TagbarToggle<CR>
" ---------- tagbar ----------


" ---------- ack.vim ----------
" https://github.com/mileszs/ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
" ---------- ack.vim ----------


" ---------- ultisnips ----------
" https://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
function! g:UltiSnips_Complete()
  call UltiSnips#ExpandSnippet()
  if g:ulti_expand_res == 0
    if pumvisible()
      return "\<C-n>"
    else
      call UltiSnips#JumpForwards()
      if g:ulti_jump_forwards_res == 0
        return "\<TAB>"
      endif
    endif
  endif
  return ""
endfunction

function! g:UltiSnips_Reverse()
  call UltiSnips#JumpBackwards()
  if g:ulti_jump_backwards_res == 0
    return "\<C-P>"
  endif

  return ""
endfunction


if !exists("g:UltiSnipsJumpForwardTrigger")
  let g:UltiSnipsJumpForwardTrigger = "<tab>"
endif

if !exists("g:UltiSnipsJumpBackwardTrigger")
  let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
endif

au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsJumpBackwardTrigger . " <C-R>=g:UltiSnips_Reverse()<cr>"
" ---------- ultisnips ----------


" ---------- vim-colors-solarized ----------
" https://github.com/altercation/vim-colors-solarized
"if has('gui_running')
"    set background=light
"else
"    set background=dark
"endif
"colorscheme solarized
" ---------- vim-colors-solarized ----------


" ---------- Web Development ----------
" Javascript
" https://github.com/Quramy/vim-js-pretty-template
"autocmd FileType typescript JsPreTmpl html
"autocmd FileType typescript syn clear foldBraces

" Typescript
" https://github.com/leafgarland/typescript-vim
"let g:typescript_compiler_binary = 'tsc'
"let g:typescript_compiler_options = ''
"autocmd QuickFixCmdPost [^l]* nested cwindow
"autocmd QuickFixCmdPost    l* nested lwindow

" Typescript Import
" https://github.com/Quramy/tsuquyomi
"nnoremap <leader>i :TsuImport<cr>
" <C-]>        :TsuDefinition Go to definition
" <C-t>        Go back
" <C-^>        :TsuReferences Show references
"autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>

" Angular
" https://github.com/bdauria/angular-cli.vim
" autocmd FileType typescript,html call angular_cli#init()

" Django
"nnoremap <leader>rs :!python manage.py runserver<cr>
"nnoremap <leader>mm :!python manage.py makemigrations<cr>
"nnoremap <leader>mi :!python manage.py migrate<cr>
" ---------- Web Development ----------
