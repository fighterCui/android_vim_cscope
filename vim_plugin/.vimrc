" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
filetype on
set nu 			" Show line number
set shiftwidth=4  	" set shiftwidth equal 4
set tabstop=4      	" show <TAB> 4 char
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set hlsearch 		" set search high light.
set fileencodings=ucs-bom,utf-8,GB2312,BIG5,default,latin1 " incremental character encode.
set ruler 			" set ruler	
set smartcase		" Do smart case matching
set cindent 		" set c indent
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
 			
"for taglist plugin cmd
let Tlist_Auto_Open=1 			" automatically open the taglist window on Vim startup.
let Tlist_Show_One_File=1 		" to display the tags for only the current active buffers.

