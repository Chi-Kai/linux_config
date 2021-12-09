call plug#begin ('~/.vim/plugged')

 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'preservim/nerdtree'
 Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
 Plug 'jiangmiao/auto-pairs'
 Plug 'vim-airline/vim-airline'
 Plug 'dracula/vim', { 'as': 'dracula' }
 Plug 'junegunn/vim-easy-align'
 Plug 'jistr/vim-nerdtree-tabs'
 Plug 'ervandew/superTab'
 Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
 Plug 'junegunn/vim-peekaboo'
 Plug 'easymotion/vim-easymotion'
 Plug 'skywind3000/asyncrun.vim'
 Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
 Plug 'rust-lang/rust.vim'
 Plug 'mhinz/vim-startify'
 Plug 'morhetz/gruvbox',{'do':':autocmd vimenter * ++nested colorscheme gruvbox'}
 Plug 'tpope/vim-fugitive' "git 插件
call plug#end()

" 默认加载termdebug插件
:packadd termdebug

" supertab 从上向下选择
let g:SuperTabDefaultCompletionType = "<c-n>"
" 打开目录树的快捷键
map <C-n> :NERDTreeToggle<CR>

"Leaderf 配置
" 查找文件
let g:Lf_WindowPosition = 'popup'
let g:Lf_ShortcutF = '<C-p>'
" 查找打开的文件
let g:Lf_ShortcutB = '<leader>lb'
" 查找隐藏文件
let g:Lf_ShowHidden = 1
" 查找标签
nmap <leader><leader> t :LeaderfBufTag<CR>
" 查找函数
nmap <leader><leader>f  :LeaderfFunction<CR>
" 查找文件内容
nmap <leader><leader>l  :LeaderfLine<CR>
" 查找标记
nmap <leader><leader>m :LeaderfMarks<CR>
" 查找命令历史
nmap <leader><leader>c :LeaderfHistoryCmd<CR>
" 查找搜索历史
nmap <leader><leader>s :LeaderfHistorySearch<CR>

" 转跳配置
" 设置easymotion的触发键
"let g:EasyMotion_leader_key = '\'
" 允许设置默认快捷键
"let g:EasyMotion_do_mapping = 1
" 智能大小写匹配
let g:EasyMotion_smartcase = 1
" 按回车自动跳到第一个匹配
let g:EasyMotion_enter_jump_first = 1
" s查找字符
nmap s <Plug>(easymotion-overwin-f)
nmap s <Plug>(easymotion-overwin-f2)
xmap s <Plug>(easymotion-bd-f)
omap s <Plug>(easymotion-bd-f)

" 自动打开 quickfix window ，高度为 6
let g:asyncrun_open = 6
" 任务结束时候响铃提醒
let g:asyncrun_bell = 1
" 设置 F10 打开/关闭 Quickfix 窗口
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>



"主题 有透明 " 
"colorscheme dracula 
"hi Normal ctermfg=252 ctermbg=none
set background=dark


"用jj替换"
inoremap jj <Esc> 

"关闭c语系换行"
set nocindent
set nosmartindent
