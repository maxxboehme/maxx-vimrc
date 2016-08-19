 set encoding=utf-8
 syntax on

function! Cond(cond, ...)
  let opts = get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin()
Plug 'vim-scripts/Decho'

" Awesome Git wrapper
Plug 'tpope/vim-fugitive'
" Shows Git differences in sign column
Plug 'mhinz/vim-signify'

" File exploring tools
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-vinegar'
Plug 'ctrlpvim/ctrlp.vim'

" Tags manager and tag displayers
Plug 'ludovicchabant/vim-gutentags'
Plug 'vim-scripts/taglist.vim'
Plug 'majutsushi/tagbar'

" Helps visualize Vims undo tree
Plug 'mbbill/undotree'

" Helps switch between source and header files
Plug 'vim-scripts/a.vim'

" Helps visualize indentations
Plug 'nathanaelkane/vim-indent-guides'

" Snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate', Cond(!has('python'))
" Other snippet tools but require python support
Plug 'SirVer/ultisnips', Cond(has('python'))
Plug 'honza/vim-snippets'
"Plug 'Valloric/YouCompleteMe'

" Syntax checking plugin
Plug 'scrooloose/syntastic'

" Helps quickly get to a specific spot in file
Plug 'easymotion/vim-easymotion'

" Light status line plugin. Can be customized to give useful feedback
Plug 'itchyny/lightline.vim'

" Color schemes
Plug 'widatama/vim-phoenix'
Plug 'fxn/vim-monochrome'
Plug 'pbrisbin/vim-colors-off'
Plug 'zandrmartin/vim-distill'
Plug 'w0ng/vim-hybrid'

" My personal settings
Plug 'maxxboehme/vim-maxx'
call plug#end()
