let g:ale_linters = {
  \ 'python': ['flake8','black'],
  \ 'c' : ['gcc'],
  \ 'cpp' : ['g++'],
  \ }
let g:ale_fixers = {
  \'python':['black'],
  \'c':['clang-format'],
  \'cpp':['clang-format'],
  \ }
let g:ale_sign_column_always = 1
let g:ale_use_global_executables = 1
let g:ale_lint_on_text_changed = 1
nmap <silent> <S-f> <Plug>(ale_fix)
let g:ale_python_flake8_args = '--max-line-length=150'
let g:ale_python_autopep8_args = '--max-line-length=150'