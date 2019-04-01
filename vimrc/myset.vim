imap ( ()<left>
imap [ []<left>
imap { {}<left>
imap " "<ESC>vypi
imap ' '<ESC>vypi

nmap a ggVG
map b  :bn<CR>
vmap y "+y
map d  :bdelete<CR>
vmap o y:edit <C-R>"<CR>
map p  "+p
nmap q  q
nmap r Vy:!<C-R>"
vmap s "zy:%s/<C-R>z/rep/g<left><left>
nmap s  :split<CR>
nmap v  :vsplit<CR>
nmap w  w
map 1  :buffer 1<CR>
map 2  :buffer 2<CR>
map 3  :buffer 3<CR>
map 4  :buffer 4<CR>
map 5  :buffer 5<CR>
map 6  :buffer 6<CR>
map 7  :buffer 7<CR>
map 8  :buffer 8<CR>
map f  :bfirst<CR>
map l  :blast<CR>
map >  4>
map <  4<
map -  4-
map =  4+
"map <Left> <Nop>
"map <Right> <Nop>
map <Up> gk
map <Down> gj
cmap a" let @a=@"
cmap q qa

set laststatus=2
set showcmd
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set number  
filetype on
filetype indent on
filetype plugin on
set t_ti= t_te=
set showmatch
set mat=2
set hlsearch
set incsearch
set smartcase
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
set showcmd
syntax on

set dictionary=$HOME/.vim/dic/mydic
set dictionary+=$HOME/.vim/dic/nim012.dict

