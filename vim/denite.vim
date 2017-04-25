nmap <leader>t :Denite file_rec<CR>

call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
	      \ [ '.git/', 'node_modules/', 'vendor/'])
