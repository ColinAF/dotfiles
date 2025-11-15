" Colin's vim settings 

" Remap the leader key 
let mapleader = " "

"color elflord  " colorscheme 
filetype on    " Filetype detection 
syntax on      " Turn on syntax highlighting
set nocompatible " Ignore vi compatibility

set hidden " Allow buffer switch without saving
set confirm " When doing a destructive action (deletion) ask for confirmation instead of an error

set number     " Adds line numbers
"set relativenumber " Make numbers relative to current line
set cursorline " Highlight current line

" Add filename to statusbar 
set laststatus=2
set statusline=%f "tail of the filename

" Search down into subfolders
set path+=** " Provides tab-completion for all file-related tasks
set wildmenu " Display all matching files when we tab complete
set wildignore+=*.o,*.obj,*.so,.git/,.tags

" Grep configuration
set grepprg=grep\ -RIn
set grepformat=%f:%l:%m

" Buffer Navigation
" Use leader to list buffers
nnoremap <leader>l :ls<CR>:b<Space>
nnoremap <leader>n :bnext<CR> 
nnoremap <leader>p :bprevious<CR>
nnoremap <leader>d :bdelete<CR>

" File Navigation
" ,ff -> file finder: prompts with glob, Tab to complete (wildmenu)
nnoremap <leader>ff :find <C-R>=expand("%:p:h") . "/"<CR>**/*
" ,fg -> project grep: prompts for pattern, opens quickfix
nnoremap <leader>fg :silent grep!<Space>
" ,fq -> open quickfix list
nnoremap <leader>fq :copen<CR>

" Tag Jumping
" ctl-] jump to tag
" g ctl-] ambigious tags
" ctl-t jump back a tag
set tags=.tags
command! Tag !ctags -f .tags -R * 

" Auto generate tags file on file write of *.c and *.h files
autocmd BufWritePost *.c,*.h silent! !ctags -f .tags -R * &

" Undo settings 
set undofile
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

" Backup locations
set backup                          " enable backups
set swapfile                        " enable swaps
set undodir=$HOME/.vim/tmp/undo     " undo files
set backupdir=$HOME/.vim/tmp/backup " backups
set directory=$HOME/.vim/tmp/swap   " swap files

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
	call mkdir(expand(&undodir), "p")
endif

if !isdirectory(expand(&backupdir))
	call mkdir(expand(&backupdir), "p")
endif

if !isdirectory(expand(&directory))
	call mkdir(expand(&directory), "p")
endif

" Autocomplete
" ctrl-x ctrl-f finds files
" ctrl-n autocompele 
" ctrl-x ctrl-] autocomp tags 
" ctrl-n and ctrl-p to cyle 

" Netrw is a file browser built in to vim
" edit <dirname>

