"The leader key to excecute the commands and shorts
let mapleader=" "

" <Leader>|key is Leaderkey + anykey
" <C-|key|> is Control + anykey
" <A-|key|> is Alt + anykey
" <CR> is Enter
" <BS> is Delete before cursor
" <Del> is Delete under cursor
" 
" :!<cmd> excecute a command system level
" :r! <cmd> to insert a command
" :r <file> to insert file below cursor
"

" Special chars:
" :bar 		| separate
" :quote	" to comment
" :_%			% into current file


" commads with handle the windows
nmap <A-n>n :split 
nmap <A-n>v :vsplit 
nmap <A-n>j <C-w>j
nmap <A-n>k <C-w>k
nmap <A-n>h <C-w>h
nmap <A-n>l <C-w>l
nmap <A-n><tab> <C-w>W
nmap <A-n>mw <C-w>R
nmap <A-n>max :vertical:resize 100<cr>:resize 100<cr>
nmap <A-n>min :vertical:resize 1<cr>:resize 1<cr><A-n><tab>
nmap <A-,> 10<C-w><
nmap <A-.> 10<C-w>>
nmap <A->> 10<C-w>+
nmap <A-<> 10<C-w>-
nmap <A-n>= <C-w>=
nmap <A-n>t :tabnew 
nmap <A-n>1 :tabprevious<CR>
nmap <A-n>2 :tabnext<CR>
nmap <A-[> 15<C-y>
nmap <A-]> 15<C-e>
nmap <A-n>ed :edit ./
nmap <A-b>n :sbn<cr>
nmap <A-b>v :vsp<cr>:bn<cr>
nmap <silent>wh :hide<cr>
nmap <silent>ws :sball<cr>
nmap <silent>UP gg
nmap <silent>DN GG
nmap <silent>MID 50%

function! Tree()
	execute "normal \<C-l>"
	:Vex .
	let bufNum = bufnr("a")
	let buftype= getbufvar(bufNum,"&buftype","not found")
	execute "vertical:resize 20<cr>"
endfunction
nmap <A-n>ex :call Tree()<Cr>

set splitright
function! OpenTerminal()
		"move to right
		execute "normal \<C-l>"
		execute "normal \<C-l>"
		execute "normal \<C-l>"
		execute "normal \<C-l>"

		let bufNum = bufnr("%")
		let buftype = getbufvar(bufNum, "&buftype", "not found")

		if buftype == "terminal"
				" close existing terminal
				execute "q"
		else
				" open terminal
				execute "vsp term://zsh"

				" turn off numbers
				execute "set nonu"
				execute "set nornu"

				" toggle insert on enter/exit
				silent au BufLeave <buffer> stopinsert!
				silent au BufWinEnter,WinEnter <buffer> startinsert!

				"set maps inside terminal buffer
				execute "tnoremap <buffer> <A-q> <C-\\><C-n><C-w><C-h>"
				execute "tnoremap <buffer> <silent>quit <C-\\><C-n>:bd! %<CR>"
				execute "tnoremap <buffer> <esc> <cr>PRESS i TO ENTER TERMINAL MODE<C-\\><C-n>"

				startinsert!
		endif
	endfunction
nnoremap <A-n>o :call OpenTerminal()<CR>


"Shortcuts
nmap <leader>q :q<CR>
nmap <leader>w :w<CR>
nmap <leader>1 :source %<cr>
imap <A-i>i <ESC>
imap <A-d>d <esc>dd<insert>
imap <A-x> <Del>
imap <A-n>w <ESC>:w<cr>
imap <A-n>q <ESC>:wq<cr>
nmap <A-x> <Del>
nmap <A-l> :bn<cr>
nmap <A-h> :bp<cr>
nmap <silent>quit :bd<cr>
nmap <S-tab> :>><cr>
nmap <S-q> :<<<cr>
imap <A-q> <esc>:>><cr>$<insert>
imap <S-q> <esc>:<<<cr>$<insert>
vmap <S-tab> :>><cr>
vmap <S-q> :<<<cr>
nmap <silent>clear <esc>gg0dGi
imap <A-CR> <esc>o
imap <A-UP> <esc>ddkPi
imap <A-Down> <esc>ddjPi
imap <C-z> <esc>:undo<cr>i
nmap <C-z> <esc>:undo<cr>i


"HTML,CSS,JS shortcuts
nmap <leader>; $a;<esc>
function! Html()
	:!mkdir styles
	r~/.vim/html_base/index.html
	:!cp ~/.vim/html_base/*.css ./styles/
	vsplit styles/style.css
endfunction
nmap <leader>html :call Html()<Esc><C-w>p:w<cr>
map  <A-m>e <Esc>:Emmet div.


"Control Plugins
"nmap <leader>tr :NERDTreeFind<cr>
map <A-#># <Plug>NERDCommenterComment
map <A-#><BS> <Plug>NERDCommenterUncomment
nmap <leader>s <Plug>(easymotion-s2)
nmap <leader>f :Files<cr>

"Run proyect
function! RunPY()
		execute "normal \<C-l>"

		let bufNum = bufnr("%")
		let buftype = getbufvar(bufNum, "&buftype", "not found")
	
		if buftype == "terminal"
				" close existing terminal
				execute "q"
		else
			" open terminal
			execute "vsp term://python3 %"
			execute "vertical:resize 40"

			" turn off numbers
			execute "set nonu"
			execute "set nornu"
			execute "normal \<C-l>"

			" toggle insert on enter/exit
			"silent au BufLeave <buffer> stopinsert!
			"silent au BufWinEnter,WinEnter <buffer> startinsert!

			"set maps inside terminal buffer
			execute "tnoremap <buffer> <Esc> <C-\\><C-n>"
			execute "tnoremap <buffer> <silent>quit <C-\\><C-n>:bd!<cr>"

			"startinsert!
		endif
	endfunction

function! RunServer()
	execute "normal \<C-l>"
	execute "normal \<C-l>"
	execute "normal \<C-l>"
	execute "normal \<C-l>"
	let bufNum = bufnr("%")
	let buftype = getbufvar(bufNum, "&buftype", "not found")
	if buftype=="terminal"
		execute "q"
	else
		execute "vsp term://live-server ."
		execute "vertical:resize 35"
		execute "set nonu|:set nornu"
		execute "normal \<C-l>"
		execute "tnoremap <buffer> <Esc> <C-\\><C-n>"
		execute "tnoremap <buffer> <silent>quit <C-\\><C-n>:bd!<cr>"
	endif
endfunction
nmap <leader>rn :!node %<cr>
nmap <leader>rp :call RunPY()<cr>
nmap <leader>rs :call RunServer()<cr>


"Fzf
" Mapping selecting mappings
nmap <A-f><tab> <plug>(fzf-maps-n)
xmap <A-f><tab> <plug>(fzf-maps-x)
omap <A-f><tab> <plug>(fzf-maps-o)
" Insert mode completion
imap <A-f><A-w> <plug>(fzf-complete-word)
imap <A-f><A-f> <plug>(fzf-complete-path)
imap <A-f><A-l> <plug>(fzf-complete-line)


"IDE editor
map <A-s>a <Esc>:%s/
