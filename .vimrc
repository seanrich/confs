"--General Options-----------------------------------------------------------
syntax enable                           "enable syntax highlighting
set nocompatible                        "disable vi compatibility
set showmatch                           "set paren matching for lisp
set number                              "show line numbers
set ruler                               "show current position in file
set wrap!                               "turn off word wrap
set linebreak                           "wrap around words, not last fitting character
set ignorecase smartcase                "have search ignore the case, unless specified
set paste                               "disable autoindent for paste
set nocp
set title
set list listchars=tab:>.,trail:.,extends:#,nbsp:.	"show bad whitespace
set incsearch

"--File Type Options----------------------------------------------------------
set cindent tabstop=4 shiftwidth=4 expandtab smarttab ai si     "For basic editing assume C-Style
au filetype lisp   set lisp indentexpr tabstop=2 shiftwidth=2
au filetype python set tabstop=4 shiftwidth=4

"--Abbreviations--------------------------------------------------------------
ab {{ {<cr>}<esc>kA

"--Ominiomplete Options-------------------------------------------------------
filetype plugin indent on               "Enable special per language features
set ofu=syntaxcomplete#Complete         "Enables Omnicomplete Functionality
set completeopt-=preview
let OmniCpp_NamespaceSearch = 1         "Search namespace in included files

"--Key Bindings---------------------------------------------------------------
set backspace=indent,eol,start          "makesure backspace works
"Map OmniComplete to to C-Space
inoremap <C-space> <C-x><C-o>
"Ignore F1 because its next to Esc
map <F1> <nop>
"Save myself from pressing the shift key
nmap ; :
"Save myself from pressing the Esc Key
imap jj <esc>
"C-Enter makes new line
imap <c-cr> <esc>o
nmap <c-cr> o<esc>
imap <c-s-cr> <esc>O
nmap <c-s-cr> O<esc>    
map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <F11> :%!indent -i4 -npsl -di0 -br -nce -d0 -cli0 -npcs -nfc1 -nut 2>/dev/null<CR> 
map <F10> :%s///g<CR>
cmap w!! w !sudo tee % >/dev/null

"--GUI Options----------------------------------------------------------------
set guioptions-=T                       "remove the tool bar
set guioptions-=m                       "remove the menu bar
set gfn=Monospace\ 12                   "monospace fonts ftw!
set mouse-=a                            "remove mouse visual mode

"--TO HTML OPTIONS------------------------------------------------------------
let html_use_css = 1                        "Use CSS instead of font tags
let html_no_pre = 1                         "Remove pre tags, use div

"--Paste from terminal--------------------------------------------------------
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
