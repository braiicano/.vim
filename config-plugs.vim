"Automatically install missing plugins on startup
"autocmd VimEnter *
  "\ if len(filter(values(g:plugs), '!isdirectory(v:val.directory)'))
  "\|  PlugInstall --sync | q
  "\| endif

"Vundle config:
"Alvan Autotagclose
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

"Mattn Emmet-vim
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.

let g:user_emmet_install_global = 0     "this for only html and css file"
autocmd FileType html,css EmmetInstall

""Syntastic
"set statusline+=%warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0


""""""""""""""""""""""

""""""""""""""""""""""

"VimPlug:
"TMUX navigator
"let g:tmux_navigator_save_on_switch = 1
"let g:tmux_navigator_no_mappings = 1

"FZF config
let g:fzf_preview_window = ['right:50%', 'ctrl-/']
let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']
"let g:fzf_preview_window = []
