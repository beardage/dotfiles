Plug 'beardage/orlock.nvim'

augroup OrlockOverrides
    autocmd!
    autocmd ColorScheme orlock highlight SignColumn guibg=none
    autocmd User PlugLoaded ++nested colorscheme orlock
augroup end
