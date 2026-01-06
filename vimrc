"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 基本设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " 不兼容vi模式

" 修复vim运行时路径问题
if !empty($HOME)
    set runtimepath=$HOME/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim*/,/usr/share/vim/vimfiles/after,$HOME/.vim/after
endif

filetype off                  " 暂时关闭文件类型检测

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-plug 插件管理器
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动安装 vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" 插件列表
call plug#begin('~/.vim/plugged')

" 文件浏览器 - 按F3打开/关闭
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" 函数/标签浏览器 - 按F4打开/关闭 (需要安装ctags)
Plug 'preservim/tagbar'

" 状态栏美化
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" 模糊搜索文件
Plug 'ctrlpvim/ctrlp.vim'

" Git 集成
Plug 'tpope/vim-fugitive'

" 自动补全括号
Plug 'jiangmiao/auto-pairs'

" 代码注释 - gcc注释单行，gc注释选中区域
Plug 'tpope/vim-commentary'

" 多光标编辑
Plug 'mg979/vim-visual-multi'

" 语法检查
Plug 'dense-analysis/ale'

" 代码补全引擎 (如果需要更强大的补全，可以取消下面的注释)
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'ycm-core/YouCompleteMe'

" C/C++ 增强
Plug 'octol/vim-cpp-enhanced-highlight'

" Python 增强
Plug 'vim-python/python-syntax'

" 缩进线显示
Plug 'Yggdroot/indentLine'

" 颜色主题
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'tomasr/molokai'

" 快速移动
Plug 'easymotion/vim-easymotion'

" 显示函数签名
Plug 'mbbill/echofunc'

" Cscope 支持
Plug 'brookhong/cscope.vim'

" 自动加载 cscope
Plug 'chazy/cscope_maps'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 文件类型和语法高亮
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on     " 开启文件类型检测、插件和缩进
if has("syntax")
  syntax on                   " 开启语法高亮
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 界面设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number                    " 显示行号
set relativenumber            " 显示相对行号
set cursorline                " 高亮当前行
set cursorcolumn              " 高亮当前列
set showcmd                   " 显示命令
set showmatch                 " 显示匹配的括号
set matchtime=2               " 匹配括号高亮时间
set ruler                     " 显示光标位置
set laststatus=2              " 总是显示状态栏
set cmdheight=2               " 命令行高度
set scrolloff=5               " 光标上下保留5行
set sidescrolloff=5           " 光标左右保留5列
set colorcolumn=80,120        " 80和120列高亮
set t_Co=256                  " 256色支持
set background=dark

" 颜色主题（可选其他主题：onedark, molokai）
silent! colorscheme gruvbox
"silent! colorscheme onedark
"silent! colorscheme molokai

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 编辑器行为
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8            " UTF-8编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,gbk,gb2312,ISO-8859-1
set termencoding=utf-8
set autoread                  " 文件在外部修改后自动读取
set autowrite                 " 自动保存
set hidden                    " 允许隐藏未保存的buffer
set confirm                   " 退出时确认
set nobackup                  " 不创建备份文件
set nowritebackup
set noswapfile                " 不创建交换文件
set history=1000              " 历史记录数
set undofile                  " 持久化撤销
set undodir=~/.vim/undo       " 撤销文件目录
set updatetime=300            " 更新时间

" 创建撤销目录
if !isdirectory($HOME."/.vim/undo")
    call mkdir($HOME."/.vim/undo", "p", 0700)
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch                  " 高亮搜索结果
set incsearch                 " 增量搜索
set ignorecase                " 搜索忽略大小写
set smartcase                 " 智能大小写搜索
set magic                     " 正则表达式增强

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 缩进和Tab设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4                 " Tab宽度
set shiftwidth=4              " 缩进宽度
set softtabstop=4             " 软Tab宽度
set expandtab                 " Tab转空格
set smarttab                  " 智能Tab
set autoindent                " 自动缩进
set smartindent               " 智能缩进
set cindent                   " C语言缩进

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 代码折叠
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable                " 启用折叠
set foldmethod=syntax         " 语法折叠
set foldlevel=99              " 默认不折叠
set foldcolumn=1              " 折叠列宽度

" 空格键切换折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 鼠标和剪贴板
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=a                   " 启用鼠标
set clipboard=unnamedplus     " 系统剪贴板

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 快捷键映射
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","             " Leader键设为逗号

" F3: 打开/关闭文件浏览器 NERDTree
nnoremap <silent> <F3> :NERDTreeToggle<CR>

" F4: 打开/关闭函数列表 Tagbar
nnoremap <silent> <F4> :TagbarToggle<CR>

" F5: 刷新所有(重新加载文件和ctags)
nnoremap <silent> <F5> :e!<CR>:!ctags -R .<CR><CR>

" F6: 显示/隐藏空白字符
nnoremap <silent> <F6> :set list!<CR>

" F7: 上一个buffer
nnoremap <silent> <F7> :bprevious<CR>

" F8: 下一个buffer
nnoremap <silent> <F8> :bnext<CR>

" F9: 编译
nnoremap <silent> <F9> :make<CR>

" F12: 打开/关闭粘贴模式
set pastetoggle=<F12>

" Ctrl+h/j/k/l 窗口切换
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 快速保存
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>x :x<CR>

" 快速编辑vimrc
nnoremap <leader>ev :edit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" 取消搜索高亮
nnoremap <silent> <leader><CR> :nohlsearch<CR>

" 移动行
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" 快速跳转到行首行尾
nnoremap H ^
nnoremap L $

" 分屏操作
nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>hs :split<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree 配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeShowHidden=1                    " 显示隐藏文件
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '\.o$', '\.ko$', '\.a$']
let NERDTreeWinSize=30                      " 窗口宽度
let NERDTreeMinimalUI=1                     " 简化界面
let NERDTreeDirArrows=1                     " 箭头样式
" 当vim启动时如果没有文件自动打开NERDTree
" autocmd vimenter * if !argc() | NERDTree | endif
" 当只剩NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar 配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_width=35                       " 窗口宽度
let g:tagbar_left=0                         " 在右边显示
let g:tagbar_autofocus=1                    " 打开时自动聚焦
let g:tagbar_sort=0                         " 按照代码顺序排序
let g:tagbar_compact=1                      " 紧凑模式

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline 状态栏配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts=1             " 使用powerline字体
let g:airline#extensions#tabline#enabled=1  " 显示标签页
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_theme='gruvbox'               " 主题

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CtrlP 配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_by_filename=1
let g:ctrlp_regexp=0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$|build|dist',
  \ 'file': '\v\.(exe|so|dll|o|ko|pyc|swp)$',
  \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ALE 语法检查配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
\   'c': ['gcc', 'clang'],
\   'cpp': ['gcc', 'clang'],
\   'python': ['pylint', 'flake8'],
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'c': ['clang-format'],
\   'cpp': ['clang-format'],
\   'python': ['autopep8'],
\}
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Cscope 配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cscopequickfix=s-,c-,d-,i-,t-,e-
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " 自动加载cscope.out
    if filereadable("cscope.out")
        cs add cscope.out
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif

" Cscope 快捷键
nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
nnoremap <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
nnoremap <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
nnoremap <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
nnoremap <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
nnoremap <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
nnoremap <leader>ff :call CscopeFind('f', expand('<cfile>'))<CR>
nnoremap <leader>fi :call CscopeFind('i', expand('<cfile>'))<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python 增强
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:python_highlight_all = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => C/C++ 增强
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => IndentLine 配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_enabled = 1
let g:indentLine_char = '┊'
let g:indentLine_color_term = 239

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 自动命令
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 保存时自动删除行尾空格
autocmd BufWritePre * :%s/\s\+$//e

" 打开文件时跳转到上次编辑位置
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" 针对不同文件类型的设置
autocmd FileType c,cpp setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType make setlocal noexpandtab
autocmd FileType html,css,javascript,json setlocal tabstop=2 shiftwidth=2 expandtab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 高亮配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight Comment ctermfg=8
highlight Search term=reverse ctermbg=100 guibg=Yellow
highlight Pmenu ctermfg=15 ctermbg=234 guibg=LightMagenta
highlight PmenuSel ctermbg=50

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 自定义命令
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 生成ctags
command! MakeTags !ctags -R .

" 生成cscope数据库
command! MakeCscope !find . -name "*.c" -o -name "*.cpp" -o -name "*.h" -o -name "*.hpp" > cscope.files && cscope -bkq -i cscope.files

" 同时生成ctags和cscope
command! MakeAll MakeTags | MakeCscope

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 欢迎信息
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 启动时显示帮助信息
autocmd VimEnter * if !argc() | echo "F3:文件树 F4:函数列表 F5:刷新 Ctrl-P:搜索文件 ,w:保存 ,q:退出" | endif
