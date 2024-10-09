" Colin's vim plugins 
color elflord  " colorscheme 
filetype on    " Filetype detection 
syntax on      " Turn on syntax highlighting
set nocompatible " Ignore vi compatibility

set number     " Adds line numbers
set relativenumber " Make numbers relative to current line
set cursorline " Highlight current line
set smartindent " Better code indents

set tabstop=4
set shiftwidth=4	
set foldmethod=syntax

" Add filename to statusbar 
set laststatus=2
set statusline=%f "tail of the filename

" Finding Files
" Search down into subfolders
set path+=** " Provides tab-completion for all file-related tasks
set wildmenu " Display all matching files when we tab complete

" Tag Jumping
set tags=.tags
command! Tag !ctags -f .tags -R * 

" Auto generate tags file on file write of *.c and *.h files
 autocmd BufWritePost *.c,*.h silent! !ctags -f .tags -R * &

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

