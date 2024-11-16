" Colin's vim plugins 
color elflord  " colorscheme 
filetype on    " Filetype detection 
syntax on      " Turn on syntax highlighting
set nocompatible " Ignore vi compatibility

set number     " Adds line numbers
set relativenumber " Make numbers relative to current line
set cursorline " Highlight current line

set tabstop=4
set shiftwidth=4	

" Add filename to statusbar 
set laststatus=2
set statusline=%f "tail of the filename

" Move lines around with vim bindings
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Finding Files
" Search down into subfolders
set path+=** " Provides tab-completion for all file-related tasks
set wildmenu " Display all matching files when we tab complete

" Tag Jumping
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


" ctl-] jump to tag
" g ctl-] ambigious tags
" ctl-t jump back a tag
"

" Autocomplete
" ctrl-x ctrl-f finds files
" ctrl-n autocompele 
" ctrl-x ctrl-] autocomp tags 
" ctrl-n and ctrl-p to cyle 

" Netrw is a file browser built in to vim
" edit <dirname>

