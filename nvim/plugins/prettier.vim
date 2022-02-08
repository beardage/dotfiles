Plug 'prettier/vim-prettier', { 'do': 'npm install' }

let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat_require_pragma = 0
au BufWritePre *.css,*.svelte,*.pcss,*.html,*.ts,*.tsx,*.js,*.jsx,*.json PrettierAsync
