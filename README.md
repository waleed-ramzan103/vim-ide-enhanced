# Vim IDE Enhanced - 强大的 Vim IDE 配置

🚀 将 Vim 打造成媲美现代 IDE 的开发环境，专为 C/C++/Python 开发优化。

![Vim Version](https://img.shields.io/badge/Vim-8.0%2B-green.svg)
![License](https://img.shields.io/badge/license-MIT-blue.svg)

## ✨ 特性

- 🌳 **文件浏览器** - NERDTree 提供类似 VSCode 的文件树
- 📋 **函数列表** - Tagbar 显示当前文件的所有函数、结构体、宏定义
- 🔍 **模糊搜索** - CtrlP 快速查找项目中的任何文件
- 💡 **智能补全** - 自动补全括号、引号，支持代码补全
- 🎨 **美化界面** - Airline 状态栏、主题配色、行号显示
- 📁 **代码折叠** - 一键折叠/展开函数和代码块
- 🔧 **Cscope 集成** - 强大的代码导航和符号查找
- ⚡ **快捷键** - 丰富的快捷键提升编辑效率
- 🎯 **语法检查** - ALE 实时语法检查和代码格式化
- 🌈 **多主题** - Gruvbox、OneDark、Molokai 等精美主题

## 📦 快速安装

### 方法 1：一键安装（推荐）

```bash
git clone https://github.com/YOUR_USERNAME/vim-ide-enhanced.git
cd vim-ide-enhanced
bash install.sh
```

### 方法 2：手动安装

```bash
# 1. 备份原有配置
mv ~/.vimrc ~/.vimrc.bak

# 2. 复制配置文件
cp vimrc ~/.vimrc

# 3. 安装 vim-plug 插件管理器
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# 4. 创建必要目录
mkdir -p ~/.vim/undo ~/.vim/plugged

# 5. 安装插件
vim +PlugInstall +qall
```

## 🔧 依赖工具

建议安装以下工具以获得完整功能（非必需）：

```bash
# Ubuntu/Debian
sudo apt-get install -y vim exuberant-ctags cscope curl git

# CentOS/RHEL
sudo yum install -y vim ctags cscope curl git
```

## 📚 完整快捷键手册

### 🎯 核心功能键（F1-F12）

| 快捷键 | 功能 | 说明 |
|--------|------|------|
| `F3` | 打开/关闭文件浏览器 | NERDTree 文件树，可浏览项目结构 |
| `F4` | 打开/关闭函数列表 | Tagbar 显示当前文件的函数/变量/结构体 |
| `F5` | 刷新并重建 tags | 重新加载文件并生成 ctags |
| `F6` | 显示/隐藏空白字符 | 显示空格、Tab、换行符等不可见字符 |
| `F7` | 上一个 buffer | 切换到前一个打开的文件 |
| `F8` | 下一个 buffer | 切换到下一个打开的文件 |
| `F9` | 编译 | 执行 `:make` 命令 |
| `F12` | 切换粘贴模式 | 避免粘贴时自动缩进导致格式混乱 |

### 🪟 窗口管理

| 快捷键 | 功能 | 说明 |
|--------|------|------|
| `Ctrl-h` | 跳转到左边窗口 | 替代 `Ctrl-w h` |
| `Ctrl-j` | 跳转到下方窗口 | 替代 `Ctrl-w j` |
| `Ctrl-k` | 跳转到上方窗口 | 替代 `Ctrl-w k` |
| `Ctrl-l` | 跳转到右边窗口 | 替代 `Ctrl-w l` |
| `,vs` | 垂直分屏 | 左右分割窗口 |
| `,hs` | 水平分屏 | 上下分割窗口 |

### 📝 编辑操作

| 快捷键 | 功能 | 说明 |
|--------|------|------|
| `,w` | 保存文件 | 快速保存 |
| `,q` | 退出 | 快速退出 |
| `,x` | 保存并退出 | 相当于 `:x` |
| `空格键` | 折叠/展开代码块 | 在函数、if 语句等处使用 |
| `gcc` | 注释/取消注释当前行 | 单行快速注释 |
| `gc` + 选中 | 注释/取消注释选中区域 | 多行注释（visual 模式） |
| `Alt-j` | 向下移动当前行 | 快速调整代码顺序 |
| `Alt-k` | 向上移动当前行 | 快速调整代码顺序 |

### 🔍 搜索和导航

| 快捷键 | 功能 | 说明 |
|--------|------|------|
| `Ctrl-p` | 模糊搜索文件 | CtrlP，输入文件名快速打开 |
| `,<Enter>` | 取消搜索高亮 | 清除搜索结果的高亮显示 |
| `H` | 跳转到行首 | 相当于 `^` |
| `L` | 跳转到行尾 | 相当于 `$` |

### 🔧 Cscope 代码导航

| 快捷键 | 功能 | 说明 |
|--------|------|------|
| `,fa` | 交互式查找 | 弹出菜单选择查找类型 |
| `,fs` | 查找符号 | 找到光标下符号的所有引用 |
| `,fg` | 查找定义 | 跳转到函数/变量的定义 |
| `,fd` | 查找被调用函数 | 查找当前函数调用了哪些函数 |
| `,fc` | 查找调用 | 查找哪些地方调用了当前函数 |
| `,ft` | 查找文本 | 搜索指定文本 |
| `,fe` | 查找正则表达式 | 使用正则表达式搜索 |
| `,ff` | 查找文件 | 查找文件 |
| `,fi` | 查找包含文件 | 查找包含当前文件的文件 |

### ⚙️ 配置管理

| 快捷键 | 功能 | 说明 |
|--------|------|------|
| `,ev` | 编辑 vimrc | 快速打开配置文件进行修改 |
| `,sv` | 重新加载 vimrc | 使配置修改立即生效 |

## 🎨 NERDTree 文件树操作

打开 NERDTree 后（按 `F3`），可使用以下快捷键：

| 按键 | 功能 |
|------|------|
| `o` | 打开文件或展开/收起目录 |
| `t` | 在新标签页打开文件 |
| `i` | 水平分屏打开文件 |
| `s` | 垂直分屏打开文件 |
| `p` | 跳转到父目录 |
| `P` | 跳转到根目录 |
| `K` | 跳转到同级第一个节点 |
| `J` | 跳转到同级最后一个节点 |
| `m` | 打开文件系统菜单（新建、删除、移动文件） |
| `r` | 刷新当前目录 |
| `R` | 刷新根目录 |
| `I` | 显示/隐藏隐藏文件 |
| `q` | 关闭 NERDTree |

## 📋 Tagbar 函数列表操作

打开 Tagbar 后（按 `F4`），可使用以下快捷键：

| 按键 | 功能 |
|------|------|
| `Enter` | 跳转到标签定义 |
| `p` | 预览标签（光标停留在 Tagbar） |
| `P` | 在预览窗口中打开标签 |
| `<Space>` | 在命令行显示标签原型 |
| `+` / `zo` | 展开折叠 |
| `-` / `zc` | 收起折叠 |
| `*` / `zR` | 展开所有折叠 |
| `=` / `zM` | 收起所有折叠 |
| `s` | 切换排序方式（按名称/按出现顺序） |
| `q` | 关闭 Tagbar |

## 🔨 在项目中生成 tags 和 cscope 数据库

为了使用 Tagbar（F4）和 Cscope 功能，需要在项目根目录生成索引：

### 生成 ctags

```bash
# 方法 1：在终端执行
cd /path/to/your/project
ctags -R .

# 方法 2：在 vim 中执行
:MakeTags
```

### 生成 cscope 数据库

```bash
# 方法 1：在终端执行
cd /path/to/your/project
find . -name "*.c" -o -name "*.cpp" -o -name "*.h" -o -name "*.hpp" > cscope.files
cscope -bkq -i cscope.files

# 方法 2：在 vim 中执行
:MakeCscope

# 方法 3：一次生成两者
:MakeAll
```

## 🎨 主题切换

默认使用 Gruvbox 主题。如需切换其他主题，编辑 `~/.vimrc`：

```vim
" 修改这一行
silent! colorscheme gruvbox

" 改为其他主题
silent! colorscheme onedark
" 或
silent! colorscheme molokai
```

可用主题（9个精选）：

**暖色调：**
- `gruvbox` - 复古配色，护眼舒适（默认）⭐
- `dracula` - 流行暗色主题，紫色调
- `molokai` - 高对比度，适合演示

**中性色调：**
- `onedark` - Atom 编辑器风格，现代简洁
- `palenight` - Material 风格，柔和配色
- `tokyonight` - 东京夜景，近期流行

**冷色调：**
- `nord` - 北欧风格，冷色优雅
- `iceberg` - 蓝色基调，舒适护眼

**经典：**
- `solarized` - 经典 Solarized（支持亮色/暗色）

## 🐍 Python 开发配置

配置已针对 Python 开发优化：

- 语法高亮增强
- 自动缩进（4 空格）
- PEP8 风格支持
- 支持 pylint、flake8 语法检查（需安装）

```bash
# 安装 Python 工具（可选）
pip3 install --user pylint flake8 autopep8
```

## 💻 C/C++ 开发配置

- 增强的 C++ 语法高亮
- 类、成员变量高亮
- 自动缩进（4 空格，Tab）
- Cscope 符号导航
- 支持 gcc、clang 语法检查

## 📁 文件类型特定设置

配置会根据文件类型自动调整：

| 文件类型 | Tab 宽度 | 使用空格 |
|----------|----------|----------|
| C/C++ | 4 | ✅ |
| Python | 4 | ✅ |
| HTML/CSS/JS/JSON | 2 | ✅ |
| Makefile | 8 | ❌（使用 Tab） |

## 🛠️ 高级功能

### 持久化撤销

即使关闭 vim 再打开，仍可以撤销之前的修改：

```vim
" 撤销文件保存在 ~/.vim/undo
u     " 撤销
Ctrl-r " 重做
```

### 自动保存光标位置

重新打开文件时，自动跳转到上次编辑的位置。

### 自动删除行尾空格

保存文件时自动删除行尾多余的空格。

### 高亮显示

- 当前行高亮
- 当前列高亮
- 80 列和 120 列标记线
- 搜索结果高亮
- 缩进线显示

## 🔌 插件列表

| 插件 | 功能 |
|------|------|
| NERDTree | 文件浏览器 |
| nerdtree-git-plugin | Git 状态显示 |
| Tagbar | 函数/标签列表 |
| vim-airline | 美化状态栏 |
| vim-airline-themes | 状态栏主题 |
| CtrlP | 模糊文件搜索 |
| vim-fugitive | Git 集成 |
| auto-pairs | 自动补全括号 |
| vim-commentary | 快速注释 |
| vim-visual-multi | 多光标编辑 |
| ALE | 异步语法检查 |
| vim-cpp-enhanced-highlight | C++ 语法增强 |
| python-syntax | Python 语法增强 |
| indentLine | 缩进线显示 |
| vim-easymotion | 快速跳转 |
| echofunc | 显示函数签名 |
| cscope.vim | Cscope 集成 |
| cscope_maps | Cscope 快捷键 |
| gruvbox / onedark / molokai | 主题 |

## 📖 使用技巧

### 1. 快速打开项目文件

```bash
# 进入项目目录
cd /path/to/project

# 打开 vim（不指定文件）
vim

# 按 F3 打开文件树，或按 Ctrl-p 搜索文件
```

### 2. 代码导航

```vim
" 跳转到定义（需要 ctags）
Ctrl-]

" 返回
Ctrl-t

" 或使用 Cscope
,fg " 查找定义
```

### 3. 多文件编辑

```vim
" 打开多个文件
vim file1.c file2.c file3.c

" 切换文件
F7 / F8  " 前一个/后一个
:bn      " 下一个 buffer
:bp      " 上一个 buffer
:ls      " 列出所有 buffer
:b<数字> " 跳转到指定 buffer
```

### 4. 分屏编辑

```vim
,vs      " 垂直分屏
,hs      " 水平分屏
Ctrl-w = " 平均分配窗口大小
Ctrl-w _ " 最大化当前窗口高度
Ctrl-w | " 最大化当前窗口宽度
```

### 5. 代码折叠

```vim
空格键   " 切换当前折叠
zo      " 打开折叠
zc      " 关闭折叠
zR      " 打开所有折叠
zM      " 关闭所有折叠
```

## 🔄 更新插件

```bash
# 在 vim 中执行
:PlugUpdate

# 清理未使用的插件
:PlugClean
```

## 🆘 故障排除

### Q: F4 按下后提示找不到 ctags

**A:** 需要安装 ctags 并在项目目录生成 tags 文件：

```bash
sudo apt-get install exuberant-ctags
cd /path/to/project
ctags -R .
```

### Q: Cscope 功能不工作

**A:** 需要安装 cscope 并生成数据库：

```bash
sudo apt-get install cscope
cd /path/to/project
find . -name "*.c" -o -name "*.h" > cscope.files
cscope -bkq -i cscope.files
```

### Q: 插件安装失败

**A:** 检查网络连接，或手动安装：

```bash
cd ~/.vim/plugged
git clone https://github.com/preservim/nerdtree.git
```

### Q: 配色不正确

**A:** 确保终端支持 256 色：

```bash
echo $TERM  # 应该显示 xterm-256color 之类的
export TERM=xterm-256color  # 添加到 ~/.bashrc
```

### Q: 中文显示乱码

**A:** 配置已设置 UTF-8 编码，确保终端也使用 UTF-8：

```bash
echo $LANG  # 应该包含 UTF-8
export LANG=zh_CN.UTF-8
```

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！

## 📄 许可证

MIT License

## 🙏 鸣谢

感谢所有优秀的 Vim 插件作者！

---

**⭐ 如果这个配置对你有帮助，请给个 Star！**

**📧 问题反馈：** [提交 Issue](https://github.com/YOUR_USERNAME/vim-ide-enhanced/issues)

