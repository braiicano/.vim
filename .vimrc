"Set Vim
set autoindent				"To autoindent the text
set autoread					"To update windows if change in outside
set background=dark		"Set dark colors in editor
set clipboard=unnamed	"To add clipboard copy
set cmdheight=1				"Set number of lines to use for the windows command-line
"set columns=100       "Max letter before auto wrap
"set colorcolumn=+1		"Show a vertical line to limit the write line
set cursorline        "Show a line at cursos
"set display
set encoding=utf-8		"Use UTF-8 encode
set expandtab					"Insert spaces in use tab
set mouse=a						"Active the mouse to use
set number						"Show numbers of line
set numberwidth=1			"Set width between line number and text
syntax on
set relativenumber    "Show a relative line number in front of each line
set ruler             "Show position of Line and Column of cursor
set showcmd           "Show a partial cmd in status line
set showmatch         "Show match in bracket insert
set shiftwidth=2      "Number of spaces in (auto)indent
set smartindent
set tabstop=2
set title							"Add name at title



"Set new maps key
so ~/.vim/maps.vim


"Set plugins
so ~/.vim/vimplug.vim
"so ~/.vim/vundleplug.vim
so ~/.vim/config-plugs.vim
so ~/.vim/plugged/coc-config.vim


"Set theme for editor
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
highlight Normal ctermbg=NONE
set laststatus=2
set noshowmode
if !has('gui_running')
  set t_Co=256
endif


"" Search
set hlsearch	"highlight matches
set incsearch	"incremental searching
set ignorecase	"search are cas insensitive...
set smartcase	"... unless they contain at least one capital letter


"" Set IDE excecutor
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

let g:LanguageClient_serverCommands = {
    \ 'sql': ['sql-language-server', 'up', '--method', 'stdio'],
    \ }
