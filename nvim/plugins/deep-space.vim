Plug 'tyrannicaltoucan/vim-deep-space'

augroup DeepSpaceOverrides
    autocmd!
    autocmd ColorScheme deep-space highlight SignColumn guibg=none
    autocmd User PlugLoaded ++nested colorscheme deep-space
augroup end
