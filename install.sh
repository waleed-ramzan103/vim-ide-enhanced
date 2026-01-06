#!/bin/bash

echo "=================================================="
echo "Vim IDE 环境安装脚本"
echo "=================================================="

# 检查工具是否已安装
echo ""
echo "[1/5] 检查必要工具..."
MISSING_TOOLS=""

command -v vim >/dev/null 2>&1 || MISSING_TOOLS="$MISSING_TOOLS vim"
command -v ctags >/dev/null 2>&1 || MISSING_TOOLS="$MISSING_TOOLS ctags"
command -v cscope >/dev/null 2>&1 || MISSING_TOOLS="$MISSING_TOOLS cscope"
command -v curl >/dev/null 2>&1 || MISSING_TOOLS="$MISSING_TOOLS curl"
command -v git >/dev/null 2>&1 || MISSING_TOOLS="$MISSING_TOOLS git"

if [ -n "$MISSING_TOOLS" ]; then
    echo "警告: 以下工具未安装:$MISSING_TOOLS"
    echo "如果有root权限，可以运行:"
    echo "  sudo apt-get install -y vim exuberant-ctags cscope curl git"
    echo ""
    echo "没有root权限？可以："
    echo "  1. 请求管理员安装这些工具"
    echo "  2. 部分功能(如F4的Tagbar)需要ctags，没有也能用vim"
    echo ""
    read -p "是否继续安装vim插件？[Y/n] " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]] && [[ -n $REPLY ]]; then
        echo "安装已取消"
        exit 1
    fi
else
    echo "✓ 所有必要工具已安装"
fi

# 安装vim-plug插件管理器
echo ""
echo "[2/5] 安装 vim-plug 插件管理器..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# 创建必要的目录
echo ""
echo "[3/5] 创建vim目录..."
mkdir -p ~/.vim/undo
mkdir -p ~/.vim/plugged

# 安装vim插件
echo ""
echo "[4/5] 安装vim插件 (这可能需要几分钟)..."
vim +PlugInstall +qall

# 可选：安装Python工具（用于语法检查）
echo ""
echo "[5/5] 安装Python开发工具 (可选)..."
if command -v pip3 >/dev/null 2>&1; then
    pip3 install --user pylint flake8 autopep8 2>/dev/null
    if [ $? -eq 0 ]; then
        echo "✓ Python工具安装成功"
    else
        echo "⚠ Python工具安装失败(可忽略)"
    fi
else
    echo "⚠ pip3未安装，跳过Python工具安装(不影响C/C++开发)"
fi

echo ""
echo "=================================================="
echo "安装完成！"
echo "=================================================="
echo ""
echo "使用说明："
echo "  F3          - 打开/关闭文件浏览器 (NERDTree)"
echo "  F4          - 打开/关闭函数列表 (Tagbar)"
echo "  F5          - 刷新并重新生成tags"
echo "  F6          - 显示/隐藏空白字符"
echo "  F7/F8       - 切换buffer"
echo "  F9          - 编译"
echo "  F12         - 粘贴模式开关"
echo "  Ctrl-P      - 模糊搜索文件"
echo "  Ctrl-H/J/K/L - 切换窗口"
echo "  ,w          - 保存文件"
echo "  ,q          - 退出"
echo "  ,ev         - 编辑vimrc"
echo "  ,sv         - 重新加载vimrc"
echo "  空格键       - 折叠/展开代码"
echo "  gcc         - 注释/取消注释当前行"
echo "  gc          - 注释/取消注释选中区域"
echo ""
echo "在项目目录中生成tags和cscope数据库："
echo "  :MakeTags      - 生成ctags"
echo "  :MakeCscope    - 生成cscope数据库"
echo "  :MakeAll       - 同时生成两者"
echo ""
echo "或者在终端中："
echo "  ctags -R ."
echo "  find . -name \"*.c\" -o -name \"*.cpp\" -o -name \"*.h\" > cscope.files"
echo "  cscope -bkq -i cscope.files"
echo ""
echo "现在可以打开vim开始使用了！"
echo "=================================================="

