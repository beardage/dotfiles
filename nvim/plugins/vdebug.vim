Plug 'vim-vdebug/vdebug'

" vdebug mappings.
if !exists('g:vdebug_options')
      let g:vdebug_options = {}
endif
let g:vdebug_options['path_maps'] = {
      \  '/var/www/karls' : '/home/kyle/d3v/mage-store',
    \}
