let g:LanguageClient_serverCommands = {
    \ 'python' : ['pyls'],
    \ 'c' : ['clangd'],
    \ 'cpp': ['clangd'],
    \ }
let g:LanguageClient_autoStart = 1
let g:LanguageClient_diagnosticsEnable = 0

nnoremap K :call LanguageClient#textDocument_hover()<CR>
