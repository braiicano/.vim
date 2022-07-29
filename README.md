# .NeoVim updates

This repo configure your Vim and Neovim editor with plugins, shorcuts and functions to help write your code.
Next one you clone the repo, use the automatic install:

	./.vim/install-vim

Or copy this to install manually.

	echo "so ~/.vim/.vimrc" >> ~/.vimrc
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	curl -sL install-node.vercel.app/lts | bash

This command create and write in .vimrc file the code to search folder configure.

In first time use Plugins package to install and configure tools.

Open NVIM and install with command:

		:PlugInstall
		
You need nodejs and python to execute successfully Neovim editor
Install the Conquer of Complete, you can use for main page.

		:CocInstall coc-sh coc-go coc-html coc-java coc-tsserver coc-json coc-pyright coc-jedi coc-vetur

## Actual keymaps configuration:
The leaderkey is SPACE key.

### WINDOWS NAVIGATE:

\<A-n>n {file}  : split horizontal windows and open file.

\<A-n>v {file}  : split vertical windows and open file.

\<A-n>t {file}  : create new tab and open file.

\<A-n>ed {file}  : open file in new buffer

\<A-n>ex		: show netrw panel.

#### To move between splits and tabs:

\<A-n>h  : move focus to left windows.

\<A-n>l  : move focus to right windows.

\<A-n>j  : move focus bottom windows.

\<A-n>k  : move focus top windows.

\<A-n><tab>	 : move focus to next windows.

\<A-n>mw : change windows position.

\<A-1>  : to move previous tab.

\<A-2>  : to move next tab.

\<A-[>  : to scroll up.

\<A-]>  : to scroll down.

\<A-l>   : move focus to next buffer.

\<A-h>   : move focus to previous buffer.

\<UP>   : go to top.

\<MID> 		: go to middle.

\<DN> : go to bottom.

\<ws> : show all files in buffer.

\<wh> : hide windows focused.

\<A-b>n : open in horizontal split next buffer.

\<A-b>v : open in vertical split next buffer.

#### To resize:

\<A-,>  : to width extend focus windows.

\<A-.>  : to width reduce focus windows.

\<A-\<>  : to height extend size in focus windows.

\<A-\>\>  : to height reduce size in focus windows.

\<A-n>=  : to resize at default

\<A-n>mw : change left/right or top/bottom positions.

\<A-n>max: resize actual windows to 80% windows size.

\<A-n>min: resize actual windows to lit panel and change focus.

#### To create a terminal:

\<A-n>o  : to open a terminal in the right panel.

\<A-\\>  : open command mode windows in terminal mode.

\<A-i>  : enter terminal mode.

\<A-nh>  : move focus at previous windows.

\<A-q>  : to exit and close terminal.

### Shortcuts:

\<leader>q  : quit editor.

\<quit>     : close windows focused.

\<leader>w  : write current file.

\<A-n>w    : only Insert mode, write current file.

\<A-n>q    : only Insert mode, write current file and exit.

\<A-n>i    : only Insert mode, begin Normal mode.

\<A-s>a {word}/{replace}    : search word and replace all coincidence.

\<A-x>     : only Insert Mode, delete a letter in cursor.

\<tab>     : indent current line.

\<S-tab>   : unindent current line.

\<A-l>l    : only Insert mode, indent current line.

\<A-l><Del>: only Insert mode, unindent current line.


### Run code:

\<leader>rn  : to run current file with NodeJS.

\<leader>rp  : to run current file with Python3.

\<Esc>       : in python mode, return to normal mode.

\<quit>      : in python mode, stop running and exit.

\<leader>rs  : run server into path

### HTML, CSS, JS shortcuts:

\<leader>;   : add in the end of line a semicolon.

\<leader>html: insert template doctype HTML5 and create empty CSS file.

\<A-n>em	: to go Emmet mode

### Plug Control:

\<leader>#   : comment current line.

\<delete>#   : uncomment current line.

\<leader>s   : search words with EasyMotion.

\<A-f><tab>  : show Fzf maps.

\<A-f><A-w>  : Insert mode, complete word.

\<A-f><A-f>  : Insert mode, complete path.

\<A-f><A-l>  : Insert mode, complete line.

\<leader>f   : Open file search mode.

## Update interface
This update all VIM interfaces, if you want use your plugins or configures, add new line source
in .vimrc file.

Bye!

