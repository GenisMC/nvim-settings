call plug#begin()
"Plug 'junegunn/goyo.vim' | Plug 'junegunn/limelight.vim'
Plug 'ctrlpvim/ctrlp.vim' | Plug 'neoclide/coc.nvim', {'branch': 'release'} 
Plug 'vim-scripts/fountain.vim' | Plug 'tpope/vim-markdown' | Plug 'ap/vim-css-color' 
Plug 'sainnhe/sonokai' | Plug 'overcache/NeoSolarized' | Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'kyazdani42/nvim-web-devicons' | Plug 'folke/trouble.nvim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
call plug#end()

"General Settings
set encoding=UTF-8 nobackup nowritebackup nocursorline splitbelow splitright wildmode=longest,list,full
set shiftwidth=4 autoindent smartindent tabstop=4 softtabstop=4 expandtab spell spelllang=en_us
set fillchars+=eob:\ 
au BufRead,BufNewFile *.fountain set filetype=fountain
" Use Windows clipboard to copy and to paste
set clipboard^=unnamed,unnamedplus

"hide bottom bar info
set noshowmode  " to get rid of thing like --INSERT--
set noshowcmd  " to get rid of display of last command

"Status Line
set statusline=
set statusline+=%#NonText#
set statusline+=%=
set statusline+=\ %f
set statusline+=\ 
set statusline+=%#CursorLineNr#
set statusline+=\ %y
set statusline+=\ %r
set statusline+=%#IncSearch#
set statusline+=\ %l/%L
set statusline+=\ [%c]

"Key-bindings
let mapleader=" "
nnoremap <leader>s :source ~/.config/nvim/init.vim<CR>
nnoremap <leader><ENTER> :Goyo<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>Q :q!<CR>
nnoremap <leader><Space> :CtrlP<CR>
nnoremap <leader>e :Sex!<CR>
nnoremap <leader>z :set invrnu invnu<CR>
nnoremap <Up>    :resize -2<CR>
nnoremap <Down>  :resize +2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>
nnoremap J 5j
nnoremap K 5k
" Pane changing
map <C-l> <C-w>l
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
" terminal
nnoremap <leader>ot :terminal<CR>
nnoremap <leader>vt :vsplit <bar> :term<CR>
nnoremap <leader>ht :split <bar> :term<CR>
tnoremap <Esc> <C-\><C-n>
tnoremap <C-\> <C-l> <C-w>l
tnoremap <C-\> <C-h> <C-w>h
tnoremap <C-\> <C-j> <C-w>j
tnoremap <C-\> <C-k> <C-w>k
"Tabs
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>T :tabclose<CR>
nnoremap <leader>t0 :tabfirst<CR>
nnoremap <leader>t$ :tablast<CR>
nnoremap <leader>t< :tabmove -<CR>
nnoremap <leader>t> :tabmove +<CR>
" Netrw settings
let g:netrw_liststyle= 3
let g:netrw_preview= 1
set nosplitright
let g:netrw_altv= 1
let g:netrw_preview_size= 20
"nohl
nnoremap <leader>/ :nohl<CR>

"Color Settings
        if has('termguicolors')
            set termguicolors
        endif

        let g:sonokai_style = 'atlantis'
        let g:sonokai_better_performance = 1
        runtime ./colors/NeoSolarized.vim

        colorscheme NeoSolarized

set background=dark
set termguicolors
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = '#777777'
hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

"set default shell powershell
"set shell=PowerShell ** breaks vim plug ** 

"Goyo Settings
function! s:goyo_enter()
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
endfunction

function! s:goyo_leave()
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  hi! Normal ctermbg=NONE guibg=NONE 
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
