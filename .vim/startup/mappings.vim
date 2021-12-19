" Unmap the arrow keys

no <up> <c-y>
no <down> <c-e>
no <left> <Nop>
no <right> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

no <s-left> <c-w><<c-w><<c-w><
no <s-right> <c-w>><c-w>><c-w>>

"no <esc><esc> :silent! noh<cr>
no <leader><esc> :set hls!<cr>
ino <leader><esc> <esc> :set hls!<cr>
"incsearch plugin
"map /  <Plug>(incsearch-forward)
"map ?  <Plug>(incsearch-backward)
"map g/ <Plug>(incsearch-stay)
"
let g:jedi#goto_command = "<leader>ad"
let g:jedi#goto_assignments_command = "<leader>ag"
let g:jedi#goto_stubs_command = "<leader>as"
let g:jedi#goto_definitions_command = "<leader>ac"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>an"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>ar"

"quick pairs
ino <leader>'' ''<ESC>i
ino <leader>"" ""<ESC>i
ino <leader>() ()<ESC>i
ino <leader>(( ();<ESC>hi
ino <leader>[] []<ESC>i
ino <leader><> <><ESC>i
ino <leader>{} {}<ESC>F{a
ino <leader>}} {};<ESC>F{a
ino <leader>{{ <esc>o{<cr>}<ESC>ko

ino <leader>, ,
no <leader>, ,

no <leader>n :tab split<CR> 
no <leader>> :tabnext<CR> 
no <leader>< :tabprev<CR> 
no <leader>v :NERDTreeClose<cr>:vsp<CR> 
no <leader>h :sp<CR> 
no <leader>q :q<CR> 
no <leader>Q :q!<CR> 
no <tab> <c-w><c-w>
no <s-tab> <c-w><s-w>


no <leader>w :w<cr>
ino <leader>w <esc>:w<cr>

no <leader><tab> :bnext<CR>
no <leader><s-tab> :bprevious<CR>

no <leader>t :NERDTreeToggle<CR>
no <leader>T :tab terminal<cr>

no <leader>o :FZF<CR>

nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

no <leader>x :lclose<bar>bn<bar>bd #<CR>

ino <leader>j <Esc>/pass<cr>"_c4l
no <leader>j /pass<cr>"_c4l

no <leader>J ?item<cr>"_c4l

autocmd FileType vim ino <leader>s <esc>:w <bar> so %<cr>
autocmd FileType vim no <leader>s :w <bar> so %<cr>

no <leader>gs :G<cr>
no <leader>gl :Glog!<cr>
no <leader>gc :Gcommit -am ""<left>
no <leader>gd :NERDTreeClose<cr>:Gvdiffsplit<cr>
no <leader>gg :tab Git! diff<cr>

ino <leader>l <esc>la
ino <leader>L <esc>A
"no <leader><space> i<space><esc>l


no <leader>rn :cn<cr>
no <leader>rp :cp<cr>
no <leader>rc :cclose<cr>
no <leader>ro :cw<cr>
no <leader>rr :cgetbuffer<cr>:q<cr>:cw<cr><cr>

"no <leader>rr ggVGy:'<,'>cgetbuffer<cr><cr><c-w><c-w>:q<cr>

no <leader>i<space> o<esc>

tnoremap <Esc> <C-\><C-n>

" devel header/implementation

autocmd FileType python no <leader>mr :w<cr>:cclose<cr>:terminal python3 app.py<CR>
autocmd FileType python ino <leader>mr <esc>:w<cr>:cclose<cr>:terminal python3 app.py<CR>
autocmd FileType python no <leader>mR :cclose<cr>:tab terminal python3 app.py<CR>

autocmd FileType python ino <leader>ifor for pass in pass:<enter>pass<Esc>k0fpcw
autocmd FileType python no <leader>ifor ifor pass in pass:<enter>pass<Esc>k0fpcw

autocmd FileType python ino <leader>ifu def pass(pass):<Enter>pass<ESC>k0fpcw
autocmd FileType python no <leader>ifu idef pass(pass):<Enter>pass<ESC>k0fpcw

autocmd FileType python ino <leader>ii <esc>gg:silent! ?import<cr>oimport<space>
autocmd FileType python no <leader>ii gg:silent! ?import<cr>oimport<space>

autocmd FileType python no <leader>= :0,$!yapf<CR>

"no <leader>mb :silent make <bar> redraw!<CR>
"no <leader>mc :silent make clean <bar> redraw!<CR>
autocmd FileType cpp no <leader>mr :cclose<cr>:terminal make run<CR>
autocmd FileType cpp no <leader>mc :cclose<cr>:terminal make clean<CR>
autocmd FileType cpp no <leader>mb :cclose<cr>:terminal make all<CR>

autocmd FileType cpp no <leader>eh :e include/<c-r>=expand('%:t')<cr><bs><bs><bs>h<cr>
autocmd FileType cpp no <leader>ec :e src/<c-r>=expand('%:t')<cr><bs>cpp<cr>

autocmd FileType cpp ino <leader>ic class<Enter>{<Enter>pass<Enter>};<Esc>3kA<space>
autocmd FileType cpp no <leader>ic iclass<Enter>{<Enter>pass<Enter>};<Esc>3kA<space>

autocmd FileType cpp ino <leader>is struct<Enter>{<Enter>pass<Enter>};<Esc>3kA<space>
autocmd FileType cpp no <leader>is istruct<Enter>{<Enter>pass<Enter>};<Esc>3kA<space>

autocmd FileType cpp ino <leader>ifor for(const auto& item : )<enter>{<Enter>pass<Enter>}<Esc>3k0f)i
autocmd FileType cpp no <leader>ifor ifor(const auto& item : )<enter>{<Enter>pass<Enter>}<Esc>3k0f)i

autocmd FileType cpp ino <leader>ifu ()<Enter>{<Enter>pass<Enter>}<ESC>3kf(a

autocmd FileType cpp ino <leader>ii <esc>gg:silent! ?#include<cr>o#include <><esc>i
autocmd FileType cpp no <leader>ii gg:silent! ?#include<cr>o#include <><esc>i

autocmd FileType cpp ino <leader>iI <esc>gg:silent! ?#include "<cr>o#include ".h"<esc>Ba
autocmd FileType cpp no <leader>iI gg:silent! ?#include "<cr>o#include ".h"<esc>Ba

autocmd FileType cpp ino <leader>ih <esc>gg:silent! /#include<cr>O#include "<c-r>=expand('%:t')<cr>"<esc>cT.h<esc>
autocmd FileType cpp no <leader>ih gg:silent! /#include<cr>O#include "<c-r>=expand('%:t')<cr>"<esc>cT.h<esc>

autocmd FileType cpp ino <leader>in <esc>gg:silent! ?#include<cr>o<cr>using namespace ;<esc>i
autocmd FileType cpp no <leader>in gg:silent! ?#include<cr>o<cr>using namespace ;<esc>i

autocmd FileType cpp ino <leader>iN namespace<Enter>{<Enter>pass<Enter>}<Esc>3kA<space>
autocmd FileType cpp no <leader>iN inamespace<Enter>{<Enter>pass<Enter>}<Esc>3kA<space>

autocmd FileType cpp ino <leader>ir return<space>;<esc>i
autocmd FileType cpp no <leader>ir ireturn<space>;<esc>i

autocmd FileType cpp ino <leader>it <esc>?class<cr>wyw<c-o>p<s->><s->>A

autocmd FileType cpp ino <leader>io cout <<  << endl;<esc>8hi

autocmd FileType cpp ino <leader>i; <esc>A;<esc>
autocmd FileType cpp no <leader>i; A;<esc>


autocmd FileType cpp ino <leader>ig <esc>:HeaderguardAdd<cr>
autocmd FileType cpp no <leader>ig :HeaderguardAdd<cr>

autocmd FileType cpp ino <leader>ip <esc>ggO#pragma once<esc>
autocmd FileType cpp no <leader>ip ggO#pragma once<esc>

"autocmd FileType cpp ino <leader>du <Esc>da{xkdd
"autocmd FileType cpp no <leader>du da{xkdd

autocmd FileType cpp no <leader>du ]}V[{kd
autocmd FileType cpp ino <leader>du <esc>]}V[{kd

autocmd FileType cpp no <leader>yu ]}V[{ky
autocmd FileType cpp ino <leader>yu <esc>]}V[{ky

