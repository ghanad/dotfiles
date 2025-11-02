autocmd FileType yaml setlocal ai ts=2 sw=2 sts=2 ex
autocmd FileType python setlocal ai ts=4 sw=4 sts=4 ex
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Highlight search results
set hlsearch

set incsearch

" ==========================
" Safe Paste for YAML & Python
" ==========================
augroup smart_paste_yaml_python
  autocmd!
  " Disable autoindent while in Insert mode (prevents broken indentation)
  autocmd FileType yaml,python autocmd InsertEnter <buffer> setlocal paste
  " Re-enable autoindent when leaving Insert mode
  autocmd FileType yaml,python autocmd InsertLeave <buffer> setlocal nopaste
augroup END
