call plug#begin ('~/.vim/plugged')

 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'jiangmiao/auto-pairs'
 Plug 'dracula/vim', { 'as': 'dracula' }
 Plug 'junegunn/vim-easy-align'
 Plug 'ervandew/superTab'
 Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
 Plug 'github/copilot.vim' "copilot 插件
 Plug 'glepnir/dashboard-nvim' "dashboard 插件
 Plug 'glepnir/spaceline.vim' " 状态栏插件
 Plug 'ryanoasis/vim-devicons' " 图标插件
 Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " markdown 预览插件
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim' " 搜索插件
 Plug 'kyazdani42/nvim-web-devicons' " for file icons
 Plug 'kyazdani42/nvim-tree.lua' " for file tree
 Plug 'akinsho/bufferline.nvim', { 'tag': '*' } " bufferline 插件
call plug#end()

" 状态栏设置
let g:spaceline_seperate_style = 'curve'

"dashboard 插件
let g:dashboard_default_executive = 'fzf'

" 默认加载termdebug插件
:packadd termdebug

" supertab 从上向下选择
let g:SuperTabDefaultCompletionType = "<c-n>"
" 打开目录树的快捷键
map <C-n> :NERDTreeToggle<CR>

" telescope 映射

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"主题 有透明 
"colorscheme dracula 
"hi Normal ctermfg=252 ctermbg=none
set background=dark


"用jj替换"
inoremap jj <Esc> 

"关闭c语系换行"
set nocindent
set nosmartindent

"cpp 规格化"
fun! CPPFormatSettings()
     setlocal equalprg=clang-format\ -style=google
endfun
autocmd FileType c,cpp call CPPFormatSettings()

"markdown config 
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = '/bin/google-chrome-stable'

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']
" map markdown
nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
