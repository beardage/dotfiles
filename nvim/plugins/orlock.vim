Plug 'beardage/orlock.nvim'

augroup OrlockOverrides
    autocmd!
    autocmd User PlugLoaded ++nested colorscheme orlock
augroup end
