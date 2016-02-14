set background=dark
colorscheme wombat 
syntax on

" PATH
let $PATH = $PATH . ':' . expand('/root/.stack/global-project/.stack-work/install/x86_64-linux/lts-3.10/7.10.2/bin')

" Window
set title

" Search
set incsearch
set hlsearch

" Indent
" set cindent

" BS
set backspace=indent,eol,start

" Tab
set expandtab
set shiftwidth=4
set tabstop=4

" Hidden Char
:set list
:set listchars=eol:$,tab:>-,trail:_

" Show hidden char
set hidden

" Wrapping
set nowrap

" Status line
set laststatus=2 " Always display
set statusline+=[%{has('multi_byte')&&\&fileencoding!=''?&fileencoding:&encoding}] " Char encode
set statusline+=%y " File type
set statusline+=%=%F " File type

" Neobundle.vim
set nocompatible
filetype off

" neobundle -------------------------------------

"if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
"endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/neobundle.vim'

" colorscheme ----------------------------------
NeoBundle 'vim-scripts/Wombat'
NeoBundle 'w0ng/vim-hybrid'
" ---------------------------------- colorscheme 

NeoBundle 'Shougo/neocomplete.vim'

NeoBundle 'Shougo/vimproc.vim' , {
  \ 'build' : {
    \ 'unix' : 'make -f make_unix.mak',
  \ },
\ }

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/unite-outline'

NeoBundle 'scrooloose/nerdtree'

NeoBundle 'tomtom/tcomment_vim'
    if !exists('g:tcomment_types')
        let g:tcomment_types = {}
    endif
    let g:tcomment_types['java'] = '// %s'
    let g:tcomment_types['php'] = '// %s'

NeoBundle 'nathanaelkane/vim-indent-guides'
    let g:indent_guides_enable_on_vim_startup = 1
    let g:indent_guides_auto_colors=0
    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=248
    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=240
    let g:indent_guides_enable_on_vim_startup=1
    let g:indent_guides_guide_size=1

NeoBundle 'Shougo/neocomplete.vim'
    " neocomplete用設定
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplete#enable_ignore_case = 1
    let g:neocomplete#enable_smart_case = 1
    if !exists('g:neocomplete#keyword_patterns')
        let g:neocomplete#keyword_patterns = {}
    endif
    let g:neocomplete#keyword_patterns._ = '\h\w*'

    let g:NeoComplCache_EnableQuickMatch=0
    highlight Pmenu ctermfg=0 ctermbg=248 guibg=#606060
    highlight PmenuSel ctermfg=0 ctermbg=159 guifg=#dddd00 guibg=#1f82cd
    highlight PmenuSbar ctermfg=248 ctermbg=0 guibg=#d6d6d6

NeoBundle 'thinca/vim-ref'

NeoBundle 'violetyk/neocomplete-php.vim'
    let g:neocomplete_php_locale = 'ja'

" [Scala] ====
NeoBundle 'derekwyatt/vim-scala'
" ==== [Scala]

" コードをvim上で即,実行する
NeoBundle 'thinca/vim-quickrun'

" [Haskell] ====
" インデント
NeoBundle 'kana/vim-filetype-haskell'
" 型表示
NeoBundle 'eagletmt/ghcmod-vim'
" 補完
" @necessary: cabal install ghc-mod
NeoBundle 'ujihisa/neco-ghc'
" エラーをvim上に表示
NeoBundle 'osyo-manga/vim-watchdogs'
" hoogleを引く
" @necessary vim-ref
" @necessary cabal install hoogle
NeoBundle 'ujihisa/ref-hoogle'
" ==== [Haskell]

" [Node.js] ====
" syntax
NeoBundle 'jelera/vim-javascript-syntax'
" ==== [Node.js]

" [Markdown] ====
NeoBundle 'plasticboy/vim-markdown'
" NeoBundle 'kannokanno/previm'
" NeoBundle 'tyru/open-browser.vim'
" ==== [Markdown]

call neobundle#end()
" ------------------------------------- neobundle

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'perl'  : $HOME . '/.vim/dict/perl.dict',
    \ 'php'   : $HOME . '/.vim/dict/php.dict',
    \ 'scala' : $HOME . '/.vim/dict/scala.dict',
\ }

" filetype plugin indent on
" filetype indent on
if has("autocmd")
    " ファイルタイプの検索を有効にする
    filetype plugin on
    " そのファイルタイプにあわせたインデントを利用する
    filetype indent on
    " これらのftではインデントを無効に
    " autocmd vimrc FileType php filetype indent off

    " ts: tabstop
    " sw: shiftwidth
    " sts: softtabstop
    " et: expandtab
    " noet: noexpandtab
    " si: smartindent
    " cinw: cinwords

    " Python
    autocmd FileType python     setl ts=4 sw=4 sts=0 et
    autocmd FileType ruby       setl ts=2 sw=2 sts=0 et
    autocmd FileType javascript setl ts=2 sw=2 sts=0 et
    autocmd FileType html       setl ts=2 sw=2 sts=0 et
    autocmd FileType haskell    setl ts=4 sw=4 sts=0 et
endif
