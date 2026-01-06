# 🔌 插件管理完全指南

本文档详细介绍如何管理 Vim IDE Enhanced 的插件系统。

## 📚 目录

- [插件管理器介绍](#插件管理器介绍)
- [安装插件](#安装插件)
- [更新插件](#更新插件)
- [删除插件](#删除插件)
- [添加新插件](#添加新插件)
- [主题切换](#主题切换)
- [故障排除](#故障排除)
- [高级技巧](#高级技巧)

---

## 插件管理器介绍

本配置使用 **[vim-plug](https://github.com/junegunn/vim-plug)** 作为插件管理器。

### 为什么选择 vim-plug？

- ✅ **简单易用** - 命令简洁，易于理解
- ✅ **并行安装** - 多个插件同时下载，速度快
- ✅ **延迟加载** - 支持按需加载，提高启动速度
- ✅ **活跃维护** - GitHub 30k+ stars，社区活跃
- ✅ **最小依赖** - 只需 vim 8.0+ 和 git

### vim-plug 安装位置

```
~/.vim/autoload/plug.vim     # vim-plug 主程序
~/.vim/plugged/              # 插件安装目录
```

---

## 安装插件

### 方式 1：命令行自动安装 ⭐ 推荐

```bash
# 安装所有插件（首次使用）
vim +PlugInstall +qall

# 更新所有插件
vim +PlugUpdate +qall

# 清理未使用的插件
vim +PlugClean +qall
```

**说明**：
- `vim` - 启动 vim
- `+PlugInstall` - 执行安装命令
- `+qall` - 完成后自动退出

**优点**：
- 完全自动化
- 不需要手动操作
- 适合脚本化部署

**示例输出**：
```
Updating plugins (0/27)
Installing plugins (27)
- nerdtree: Cloning...
- tagbar: Cloning...
...
Done!
```

### 方式 2：Vim 中手动安装

```vim
# 1. 打开 vim
vim

# 2. 执行安装命令
:PlugInstall

# 3. 等待安装完成
# 看到 "Done!" 后按 q 关闭窗口

# 4. 退出 vim
:q
```

**优点**：
- 可以实时查看安装进度
- 方便调试问题
- 交互式操作

### 方式 3：打开 vim 时自动安装

在 `~/.vimrc` 中添加（已配置）：

```vim
" 自动安装 vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
```

---

## 更新插件

### 更新所有插件

```bash
# 命令行方式
vim +PlugUpdate +qall

# Vim 中方式
:PlugUpdate
```

### 更新特定插件

```vim
:PlugUpdate nerdtree tagbar    # 更新指定的插件
```

### 查看更新内容

```vim
:PlugDiff    # 查看插件更新的 diff
```

### 更新 vim-plug 自身

```vim
:PlugUpgrade    # 更新 vim-plug 到最新版本
```

### 更新频率建议

- **日常使用**：每月更新一次
- **稳定环境**：每季度更新一次
- **开发环境**：每周更新一次

```bash
# 定期更新脚本
#!/bin/bash
# 每月1号自动更新
0 0 1 * * vim +PlugUpdate +qall
```

---

## 删除插件

### 步骤 1：从配置中移除

编辑 `~/.vimrc`，注释或删除插件行：

```vim
" 方式 1：注释掉
" Plug 'unwanted/plugin'

" 方式 2：直接删除该行
```

### 步骤 2：清理插件目录

```bash
# 命令行方式
vim +PlugClean +qall

# Vim 中方式
:PlugClean
```

### 步骤 3：确认删除

系统会列出待删除的插件，确认后按 `y` 删除。

### 手动删除

如果自动清理失败，可以手动删除：

```bash
rm -rf ~/.vim/plugged/plugin-name
```

---

## 添加新插件

### 步骤 1：查找插件

**推荐插件来源**：
- [VimAwesome](https://vimawesome.com/) - 插件搜索网站
- [GitHub](https://github.com/topics/vim-plugin) - vim-plugin 标签
- [Vim官方](https://www.vim.org/scripts/) - Vim 脚本库

### 步骤 2：添加到配置

编辑 `~/.vimrc`，在 `call plug#begin()` 和 `call plug#end()` 之间添加：

```vim
call plug#begin('~/.vim/plugged')

" 现有插件...
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'

" 添加新插件（格式：Plug '作者/仓库名'）
Plug 'junegunn/fzf'                    " 添加 fzf 模糊搜索
Plug 'tpope/vim-surround'              " 添加 surround 插件
Plug 'airblade/vim-gitgutter'          " 添加 git diff 显示

call plug#end()
```

### 步骤 3：安装新插件

```bash
vim +PlugInstall +qall
```

### 插件格式说明

```vim
" 基本格式
Plug 'author/repository'

" 指定分支
Plug 'author/repository', { 'branch': 'dev' }

" 指定标签
Plug 'author/repository', { 'tag': 'v1.0' }

" 延迟加载（按命令）
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" 延迟加载（按文件类型）
Plug 'fatih/vim-go', { 'for': 'go' }

" 自定义目录名
Plug 'dracula/vim', { 'as': 'dracula' }

" 本地插件
Plug '~/my-vim-plugin'
```

---

## 主题切换

### ⚠️ 重要说明

**所有 9 个主题插件已安装**，不需要再安装插件！

### 方法 1：永久切换（修改配置文件）

```bash
# 编辑配置
vim ~/.vimrc

# 找到约 120-135 行，修改主题：
"silent! colorscheme gruvbox      # 注释掉当前
silent! colorscheme dracula       # 启用新主题

# 保存后生效
:wq
```

### 方法 2：临时切换（Vim 中测试）

```vim
# 直接在 vim 中输入：
:colorscheme dracula
:colorscheme nord
:colorscheme tokyonight
:colorscheme palenight
:colorscheme iceberg
:colorscheme solarized
:colorscheme onedark
:colorscheme molokai
:colorscheme gruvbox

# 立即生效，但不保存配置
```

### 方法 3：快捷键切换

在 `~/.vimrc` 中添加：

```vim
" 按 <Leader>1-9 快速切换主题
nnoremap <leader>1 :colorscheme gruvbox<CR>
nnoremap <leader>2 :colorscheme dracula<CR>
nnoremap <leader>3 :colorscheme onedark<CR>
nnoremap <leader>4 :colorscheme nord<CR>
nnoremap <leader>5 :colorscheme tokyonight<CR>
nnoremap <leader>6 :colorscheme palenight<CR>
nnoremap <leader>7 :colorscheme iceberg<CR>
nnoremap <leader>8 :colorscheme molokai<CR>
nnoremap <leader>9 :colorscheme solarized<CR>
```

使用：`,1` 切换到 Gruvbox，`,2` 切换到 Dracula，以此类推。

### 验证主题是否安装

```bash
# 查看已安装的主题
ls ~/.vim/plugged/ | grep -E 'gruvbox|dracula|nord|tokyo|pale|iceberg|onedark|molokai|solarized'
```

---

## 故障排除

### 问题 1：插件安装失败

**症状**：
```
Error installing plugins
Failed to clone...
```

**解决方案**：

1. **检查网络连接**
   ```bash
   ping github.com
   curl -I https://github.com
   ```

2. **检查 git 是否安装**
   ```bash
   git --version
   ```

3. **手动克隆插件**
   ```bash
   cd ~/.vim/plugged
   git clone https://github.com/preservim/nerdtree.git
   ```

4. **使用 HTTP 代理**
   ```bash
   export https_proxy=http://proxy:port
   vim +PlugInstall +qall
   ```

### 问题 2：vim-plug 未安装

**症状**：
```
E117: Unknown function: plug#begin
```

**解决方案**：

```bash
# 重新安装 vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### 问题 3：插件不工作

**症状**：
- F3 不打开文件树
- F4 不显示函数列表

**解决方案**：

1. **检查插件是否已安装**
   ```bash
   ls ~/.vim/plugged/nerdtree
   ls ~/.vim/plugged/tagbar
   ```

2. **重新安装插件**
   ```bash
   cd ~/.vim/plugged
   rm -rf nerdtree tagbar
   vim +PlugInstall +qall
   ```

3. **检查依赖工具**
   ```bash
   # Tagbar 需要 ctags
   which ctags
   sudo apt-get install exuberant-ctags
   ```

### 问题 4：插件更新后出错

**解决方案**：

1. **回滚到之前版本**
   ```bash
   cd ~/.vim/plugged/plugin-name
   git log                    # 查看历史
   git checkout <commit-id>   # 回滚
   ```

2. **重新安装插件**
   ```bash
   cd ~/.vim/plugged
   rm -rf plugin-name
   vim +PlugInstall +qall
   ```

### 问题 5：主题不生效

**解决方案**：

1. **检查主题插件是否安装**
   ```bash
   ls ~/.vim/plugged/ | grep -i theme
   ```

2. **检查终端颜色支持**
   ```bash
   echo $TERM    # 应该包含 256color
   export TERM=xterm-256color
   ```

3. **在 vimrc 中添加**
   ```vim
   set t_Co=256
   set termguicolors  " Vim 8.0+
   ```

---

## 高级技巧

### 1. 并行安装加速

vim-plug 默认并行安装，可以调整线程数：

```vim
let g:plug_threads = 16    " 使用 16 个线程
```

### 2. 延迟加载优化

提高 vim 启动速度：

```vim
" 按需加载
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

" 按文件类型加载
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
```

### 3. 插件快照

保存当前插件状态，方便恢复：

```vim
:PlugSnapshot ~/vim-plugins.txt
```

恢复插件状态：

```bash
vim -c "source ~/vim-plugins.txt"
```

### 4. 批量操作

```bash
# 安装 + 更新 + 清理
vim +PlugInstall +PlugUpdate +PlugClean +qall
```

### 5. 自定义安装后钩子

```vim
" 安装后自动编译
Plug 'Shougo/vimproc.vim', { 'do': 'make' }

" 安装后运行脚本
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
```

### 6. 条件加载

```vim
" 只在特定条件下加载
Plug 'vim-airline/vim-airline', has('gui_running') ? {} : { 'on': [] }
```

### 7. 查看插件帮助

```vim
:PlugStatus     # 插件状态
:PlugDiff       # 更新差异
:help plug-options    # vim-plug 帮助
```

---

## 📊 插件列表

### 当前已安装插件（27 个）

#### 文件管理 (3)
- `preservim/nerdtree` - 文件树浏览器
- `Xuyuanp/nerdtree-git-plugin` - Git 状态显示
- `ctrlpvim/ctrlp.vim` - 模糊文件搜索

#### 代码导航 (3)
- `preservim/tagbar` - 函数/标签列表
- `brookhong/cscope.vim` - Cscope 集成
- `chazy/cscope_maps` - Cscope 快捷键

#### 编辑增强 (4)
- `jiangmiao/auto-pairs` - 自动补全括号
- `tpope/vim-commentary` - 快速注释
- `mg979/vim-visual-multi` - 多光标编辑
- `easymotion/vim-easymotion` - 快速跳转

#### 语法增强 (3)
- `octol/vim-cpp-enhanced-highlight` - C++ 高亮
- `vim-python/python-syntax` - Python 高亮
- `dense-analysis/ale` - 语法检查

#### 界面美化 (11)
- `vim-airline/vim-airline` - 状态栏
- `vim-airline/vim-airline-themes` - 状态栏主题
- `morhetz/gruvbox` - Gruvbox 主题 ⭐
- `joshdick/onedark.vim` - OneDark 主题
- `tomasr/molokai` - Molokai 主题
- `dracula/vim` - Dracula 主题
- `altercation/vim-colors-solarized` - Solarized 主题
- `arcticicestudio/nord-vim` - Nord 主题
- `ghifarit53/tokyonight-vim` - Tokyo Night 主题
- `drewtempelmeyer/palenight.vim` - Palenight 主题
- `cocopon/iceberg.vim` - Iceberg 主题

#### 其他功能 (3)
- `tpope/vim-fugitive` - Git 集成
- `Yggdroot/indentLine` - 缩进线
- `mbbill/echofunc` - 函数签名显示

---

## 📚 相关资源

- [vim-plug 官方文档](https://github.com/junegunn/vim-plug)
- [VimAwesome](https://vimawesome.com/) - 插件搜索
- [Vim 官方插件](https://www.vim.org/scripts/)
- [主题详细指南](THEMES.md)

---

**💡 提示**：定期更新插件，享受最新功能！

有问题？查看 [故障排除](#故障排除) 或提交 [Issue](https://github.com/TbusOS/vim-ide-enhanced/issues)。

