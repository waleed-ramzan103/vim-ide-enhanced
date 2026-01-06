#!/bin/bash

# Vim IDE Enhanced - GIF 演示录制脚本
# 用于录制功能演示 GIF

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
GIF_DIR="$PROJECT_ROOT/screenshots/demos"

# 颜色定义
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}╔══════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║                                                              ║${NC}"
echo -e "${BLUE}║         Vim IDE Enhanced - GIF 演示录制工具                  ║${NC}"
echo -e "${BLUE}║                                                              ║${NC}"
echo -e "${BLUE}╚══════════════════════════════════════════════════════════════╝${NC}"
echo

# 检查录制工具
check_tool() {
    if command -v "$1" &> /dev/null; then
        echo -e "${GREEN}✓${NC} $1 已安装"
        return 0
    else
        echo -e "${YELLOW}⚠${NC} $1 未安装"
        return 1
    fi
}

echo -e "${BLUE}[1/5]${NC} 检查 GIF 录制工具..."
HAS_PEEK=false
HAS_TERMINALIZER=false
HAS_ASCIINEMA=false

check_tool "peek" && HAS_PEEK=true
check_tool "terminalizer" && HAS_TERMINALIZER=true
check_tool "asciinema" && HAS_ASCIINEMA=true

if ! $HAS_PEEK && ! $HAS_TERMINALIZER && ! $HAS_ASCIINEMA; then
    echo
    echo -e "${YELLOW}未找到 GIF 录制工具，推荐安装：${NC}"
    echo
    echo "选择安装方式："
    echo "  1) peek          - 简单易用的 GIF 录制工具（推荐）"
    echo "  2) terminalizer  - 终端录制工具（需要 Node.js）"
    echo "  3) asciinema     - 终端录制工具（可转 GIF）"
    echo "  4) 手动安装      - 稍后自己安装"
    read -p "请选择 [1-4]: " choice
    
    case $choice in
        1)
            echo "安装 peek..."
            sudo add-apt-repository ppa:peek-developers/stable
            sudo apt update
            sudo apt install peek
            HAS_PEEK=true
            ;;
        2)
            echo "安装 terminalizer..."
            if ! command -v npm &> /dev/null; then
                echo "需要先安装 Node.js..."
                sudo apt install nodejs npm
            fi
            sudo npm install -g terminalizer
            HAS_TERMINALIZER=true
            ;;
        3)
            echo "安装 asciinema..."
            sudo apt-add-repository ppa:zanchey/asciinema
            sudo apt update
            sudo apt install asciinema
            HAS_ASCIINEMA=true
            ;;
        4)
            echo -e "${YELLOW}请稍后手动安装录制工具${NC}"
            echo "安装命令："
            echo "  peek:         sudo apt install peek"
            echo "  terminalizer: sudo npm install -g terminalizer"
            echo "  asciinema:    sudo apt install asciinema"
            exit 0
            ;;
        *)
            echo -e "${RED}无效选择${NC}"
            exit 1
            ;;
    esac
fi

echo
echo -e "${BLUE}[2/5]${NC} 创建 GIF 目录..."
mkdir -p "$GIF_DIR"
echo -e "${GREEN}✓${NC} 目录已创建: $GIF_DIR"

echo
echo -e "${BLUE}[3/5]${NC} GIF 演示场景..."
echo
echo "需要录制以下演示:"
echo
echo -e "${YELLOW}1. 快速上手演示 (quickstart.gif)${NC}"
echo "   • 打开 vim"
echo "   • 按 F3 打开文件树"
echo "   • 选择文件打开"
echo "   • 按 F4 显示函数列表"
echo "   • 跳转到函数"
echo "   • 简单编辑"
echo "   • 保存退出"
echo "   时长: 10-15 秒"
echo
echo -e "${YELLOW}2. 文件搜索演示 (file-search.gif)${NC}"
echo "   • 在项目目录打开 vim"
echo "   • 按 Ctrl-P"
echo "   • 输入文件名搜索"
echo "   • 选择并打开文件"
echo "   时长: 5-8 秒"
echo
echo -e "${YELLOW}3. 代码导航演示 (code-navigation.gif)${NC}"
echo "   • 打开一个 C 文件"
echo "   • 使用 ,fg 查找函数定义"
echo "   • 使用 ,fs 查找符号"
echo "   • 使用 ,fc 查找函数调用"
echo "   时长: 8-10 秒"
echo
echo -e "${YELLOW}4. 主题切换演示 (theme-switching.gif)${NC}"
echo "   • 在 vim 中"
echo "   • 输入 :colorscheme dracula"
echo "   • 输入 :colorscheme nord"
echo "   • 输入 :colorscheme tokyonight"
echo "   • 快速展示多个主题"
echo "   时长: 8-10 秒"
echo
echo -e "${YELLOW}5. 快捷键演示 (shortcuts.gif)${NC}"
echo "   • 按 F3 开关文件树"
echo "   • 按 F4 开关函数列表"
echo "   • 按 gcc 注释代码"
echo "   • 按 空格 折叠代码"
echo "   • 按 ,w 保存"
echo "   时长: 10-12 秒"
echo

echo -e "${BLUE}[4/5]${NC} 录制工具使用指南..."
echo

if $HAS_PEEK; then
    cat << 'EOF'
使用 Peek 录制:
  1. 启动 Peek: peek &
  2. 调整录制区域（框住终端窗口）
  3. 点击录制按钮
  4. 执行演示操作
  5. 点击停止
  6. 保存 GIF

技巧:
  • 设置合适的终端大小（建议 100x30）
  • 录制前准备好演示内容
  • 录制后可以裁剪和优化
  • GIF 控制在 5MB 以内

优化 GIF 大小:
  gifsicle -O3 input.gif -o output.gif
EOF
fi

if $HAS_TERMINALIZER; then
    cat << 'EOF'
使用 Terminalizer 录制:
  1. 开始录制: terminalizer record demo
  2. 执行演示操作
  3. 退出: exit 或 Ctrl-D
  4. 预览: terminalizer play demo
  5. 生成 GIF: terminalizer render demo

配置文件:
  编辑 ~/.terminalizer/config.yml 调整:
  - 录制质量
  - GIF 大小
  - 帧率等

技巧:
  • 使用 --skip-sharing 避免上传
  • 使用 --quality 80 控制质量
  • 录制完可以编辑 .yml 文件调整时间
EOF
fi

if $HAS_ASCIINEMA; then
    cat << 'EOF'
使用 Asciinema 录制:
  1. 开始录制: asciinema rec demo.cast
  2. 执行演示操作
  3. 退出: exit 或 Ctrl-D
  4. 转换为 GIF:
     # 安装转换工具
     sudo apt install python3-pip
     pip3 install asciinema-agg
     
     # 转换
     agg demo.cast demo.gif

技巧:
  • 使用 --idle-time-limit 2 限制停顿时间
  • 转换时可以调整速度和主题
EOF
fi

echo
echo -e "${BLUE}[5/5]${NC} 录制脚本..."
echo

# 创建演示脚本
create_demo_script() {
    local name="$1"
    local commands="$2"
    local desc="$3"
    
    cat > "$GIF_DIR/${name}.sh" << EOF
#!/bin/bash
# 演示脚本: $desc

echo "准备录制: $desc"
echo "请按照以下步骤操作:"
echo
$commands
echo
echo "录制完成后保存为: ${name}.gif"
EOF
    
    chmod +x "$GIF_DIR/${name}.sh"
    echo -e "${GREEN}✓${NC} 创建演示脚本: ${name}.sh"
}

# 1. 快速上手
create_demo_script "quickstart" 'cat << "DEMO"
1. 在项目目录打开 vim
2. 按 F3 打开文件树
3. 用方向键选择文件，按回车打开
4. 按 F4 显示函数列表
5. 选择函数，按回车跳转
6. 简单修改代码
7. 按 ,w 保存
8. 按 ,q 退出
DEMO' "快速上手演示"

# 2. 文件搜索
create_demo_script "file-search" 'cat << "DEMO"
1. cd /path/to/project
2. vim
3. 按 Ctrl-P
4. 输入文件名（如 main）
5. 看到匹配结果列表
6. 按回车打开文件
DEMO' "文件搜索演示"

# 3. 代码导航
create_demo_script "code-navigation" 'cat << "DEMO"
1. vim example.c
2. 光标移到函数名上
3. 输入 ,fg 查找定义
4. 输入 ,fs 查找符号引用
5. 输入 ,fc 查找函数调用
6. 查看结果列表
DEMO' "代码导航演示"

# 4. 主题切换
create_demo_script "theme-switching" 'cat << "DEMO"
1. vim example.c
2. :colorscheme gruvbox   (显示2秒)
3. :colorscheme dracula   (显示2秒)
4. :colorscheme nord      (显示2秒)
5. :colorscheme tokyonight (显示2秒)
6. 展示主题切换效果
DEMO' "主题切换演示"

# 5. 快捷键
create_demo_script "shortcuts" 'cat << "DEMO"
1. vim example.c
2. 按 F3 (打开文件树)
3. 按 F3 (关闭文件树)
4. 按 F4 (打开函数列表)
5. 移到一行代码，按 gcc (注释)
6. 按 空格 (折叠代码块)
7. 按 ,w (保存)
8. 演示常用快捷键
DEMO' "快捷键演示"

echo
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "${GREEN}✓${NC} GIF 录制准备完成！"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo
echo "演示脚本保存在: $GIF_DIR/"
ls -lh "$GIF_DIR"/*.sh
echo
echo "下一步:"
echo "  1. 查看演示脚本内容"
echo "  2. 启动录制工具（peek/terminalizer/asciinema）"
echo "  3. 按照脚本提示录制"
echo "  4. 优化 GIF 大小和质量"
echo "  5. 保存到 $GIF_DIR/"
echo
echo "录制技巧:"
echo "  • 终端大小: 100 列 x 30 行"
echo "  • 字体大小: 适中，清晰可见"
echo "  • 录制时长: 控制在 10-15 秒"
echo "  • 操作流畅: 避免停顿和失误"
echo "  • GIF 大小: 尽量小于 5MB"
echo
echo "开始录制？"
read -p "按回车查看第一个演示脚本... " dummy
cat "$GIF_DIR/quickstart.sh"
echo

