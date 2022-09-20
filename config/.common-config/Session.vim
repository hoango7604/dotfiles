let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/.common-config
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
tabnew
tabnew
tabrewind
edit alias/common.alias.zsh
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 94 + 95) / 191)
exe 'vert 2resize ' . ((&columns * 95 + 95) / 191)
exe 'vert 3resize ' . ((&columns * 0 + 95) / 191)
argglobal
balt alias/git.alias.zsh
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 37 - ((23 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 37
normal! 0
lcd ~/.common-config
wincmd w
argglobal
if bufexists("~/.common-config/alias/git.alias.zsh") | buffer ~/.common-config/alias/git.alias.zsh | else | edit ~/.common-config/alias/git.alias.zsh | endif
balt ~/.common-config/alias/common.alias.zsh
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 42 - ((26 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 42
normal! 0
lcd ~/.common-config
wincmd w
argglobal
if bufexists("~/.common-config/alias/keyboard-mapping.alias.zsh") | buffer ~/.common-config/alias/keyboard-mapping.alias.zsh | else | edit ~/.common-config/alias/keyboard-mapping.alias.zsh | endif
balt ~/.common-config/alias/nab.alias.zsh
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~/.common-config
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 94 + 95) / 191)
exe 'vert 2resize ' . ((&columns * 95 + 95) / 191)
exe 'vert 3resize ' . ((&columns * 0 + 95) / 191)
tabnext
edit ~/.common-config/alias/nab.alias.zsh
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 23 + 95) / 191)
exe 'vert 2resize ' . ((&columns * 167 + 95) / 191)
argglobal
balt ~/.common-config/alias/git.alias.zsh
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 40 - ((28 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 40
normal! 0
lcd ~/.common-config
wincmd w
argglobal
if bufexists("~/.common-config/alias/common.alias.zsh") | buffer ~/.common-config/alias/common.alias.zsh | else | edit ~/.common-config/alias/common.alias.zsh | endif
balt ~/.common-config/alias/nab.alias.zsh
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 2 - ((1 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
lcd ~/.common-config
wincmd w
exe 'vert 1resize ' . ((&columns * 23 + 95) / 191)
exe 'vert 2resize ' . ((&columns * 167 + 95) / 191)
tabnext
edit ~/.common-config/alias/node.alias.zsh
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
balt ~/.common-config/alias/common.alias.zsh
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~/.common-config
tabnext 1
badd +1 ~/.common-config/alias/common.alias.zsh
badd +1 ~/.common-config/alias/node.alias.zsh
badd +1 ~/.common-config/alias/keyboard-mapping.alias.zsh
badd +1 ~/.common-config/alias/nab.alias.zsh
badd +37 ~/.common-config/alias/git.alias.zsh
badd +7 ~/.common-config/config.zsh
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOSc
set winminheight=0 winminwidth=0
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
