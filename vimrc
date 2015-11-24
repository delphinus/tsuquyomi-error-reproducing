set encoding=utf-8
scriptencoding utf-8

let g:here = expand('<sfile>:p:h')

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  execute 'set runtimepath+=' . g:here . '/neobundle.vim'
endif

" Required:
call neobundle#begin(g:here)

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc.vim', {'build': {
      \   'cygwin': 'make -f make_cygwin.mak',
      \   'mac':    'make -f make_mac.mak',
      \   'unix':   'make -f make_unix.mak',
      \ }}
NeoBundle 'Quramy/tsuquyomi'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

syntax on
