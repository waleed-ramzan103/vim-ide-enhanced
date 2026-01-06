#!/bin/bash

# Vim IDE Enhanced - 自动截图脚本
# 用于创建项目展示截图

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
SCREENSHOT_DIR="$PROJECT_ROOT/screenshots"

# 颜色定义
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}╔══════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║                                                              ║${NC}"
echo -e "${BLUE}║         Vim IDE Enhanced - 截图生成工具                       ║${NC}"
echo -e "${BLUE}║                                                              ║${NC}"
echo -e "${BLUE}╚══════════════════════════════════════════════════════════════╝${NC}"
echo

# 检查截图工具
check_tool() {
    if command -v "$1" &> /dev/null; then
        echo -e "${GREEN}✓${NC} $1 已安装"
        return 0
    else
        echo -e "${YELLOW}⚠${NC} $1 未安装"
        return 1
    fi
}

echo -e "${BLUE}[1/4]${NC} 检查截图工具..."
HAS_FLAMESHOT=false
HAS_GNOME=false
HAS_SCROT=false

check_tool "flameshot" && HAS_FLAMESHOT=true
check_tool "gnome-screenshot" && HAS_GNOME=true
check_tool "scrot" && HAS_SCROT=true

if ! $HAS_FLAMESHOT && ! $HAS_GNOME && ! $HAS_SCROT; then
    echo -e "${RED}✗${NC} 未找到截图工具，正在安装..."
    echo
    echo "选择安装方式："
    echo "  1) flameshot   (推荐，功能强大)"
    echo "  2) scrot       (轻量级，命令行)"
    echo "  3) 手动截图    (使用系统截图工具)"
    read -p "请选择 [1-3]: " choice
    
    case $choice in
        1)
            sudo apt-get install -y flameshot
            HAS_FLAMESHOT=true
            ;;
        2)
            sudo apt-get install -y scrot
            HAS_SCROT=true
            ;;
        3)
            echo -e "${YELLOW}提示${NC}: 请手动截图后保存到 $SCREENSHOT_DIR/"
            exit 0
            ;;
        *)
            echo -e "${RED}无效选择${NC}"
            exit 1
            ;;
    esac
fi

echo
echo -e "${BLUE}[2/4]${NC} 创建截图目录..."
mkdir -p "$SCREENSHOT_DIR/themes"
mkdir -p "$SCREENSHOT_DIR/features"
echo -e "${GREEN}✓${NC} 目录已创建"

echo
echo -e "${BLUE}[3/4]${NC} 准备截图..."
echo
echo "需要截取以下内容："
echo
echo -e "${YELLOW}主要截图:${NC}"
echo "  1. main-interface.png     - 完整界面（文件树+代码+函数列表）"
echo "  2. nerdtree.png          - F3 文件浏览器"
echo "  3. tagbar.png            - F4 函数列表"
echo "  4. ctrlp.png             - Ctrl-P 模糊搜索"
echo "  5. split-windows.png     - 分屏编辑"
echo "  6. coding.png            - 实际编程效果"
echo
echo -e "${YELLOW}主题截图:${NC}"
echo "  7-15. theme-*.png        - 9个主题的效果图"
echo
echo -e "${YELLOW}操作说明:${NC}"
echo "  • 打开 vim 并配置好界面"
echo "  • 按下面的提示截图"
echo "  • 截图后保存到指定位置"
echo

# 截图函数
take_screenshot() {
    local name="$1"
    local desc="$2"
    local output="$SCREENSHOT_DIR/$name"
    
    echo -e "${BLUE}准备截取:${NC} $desc"
    echo -e "${YELLOW}保存为:${NC} $name"
    echo
    
    read -p "按回车继续截图... " dummy
    
    if $HAS_FLAMESHOT; then
        flameshot gui -p "$output"
    elif $HAS_SCROT; then
        echo "5秒后自动截图..."
        sleep 5
        scrot "$output"
    elif $HAS_GNOME; then
        gnome-screenshot -a -f "$output"
    fi
    
    if [ -f "$output" ]; then
        echo -e "${GREEN}✓${NC} 截图已保存: $name"
    else
        echo -e "${RED}✗${NC} 截图失败或已取消"
    fi
    echo
}

echo -e "${BLUE}[4/4]${NC} 开始截图流程..."
echo
read -p "是否开始自动截图流程？[Y/n] " start
if [[ ! $start =~ ^[Yy]$ ]] && [[ -n $start ]]; then
    echo "已取消"
    exit 0
fi

# 主要功能截图
echo
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  主要功能截图"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo

# 1. 完整界面
cat << 'EOF'
准备截图 1: 完整界面
操作步骤:
  1. 打开 vim
  2. 按 F3 打开文件树（左边）
  3. 按 F4 打开函数列表（右边）
  4. 中间显示代码
  5. 确保 Airline 状态栏可见
EOF
take_screenshot "main-interface.png" "完整界面"

# 2. NERDTree
cat << 'EOF'
准备截图 2: 文件浏览器
操作步骤:
  1. 打开 vim
  2. 按 F3 打开 NERDTree
  3. 展开几个目录
  4. 截取文件树部分
EOF
take_screenshot "features/nerdtree.png" "文件浏览器"

# 3. Tagbar
cat << 'EOF'
准备截图 3: 函数列表
操作步骤:
  1. 打开一个 C 文件
  2. 按 F4 打开 Tagbar
  3. 显示函数列表
  4. 截取 Tagbar 部分
EOF
take_screenshot "features/tagbar.png" "函数列表"

# 4. CtrlP
cat << 'EOF'
准备截图 4: 模糊搜索
操作步骤:
  1. 在项目目录打开 vim
  2. 按 Ctrl-P
  3. 输入文件名搜索
  4. 显示匹配结果
EOF
take_screenshot "features/ctrlp.png" "模糊搜索"

# 5. 分屏
cat << 'EOF'
准备截图 5: 分屏编辑
操作步骤:
  1. 打开 vim
  2. 输入 :vsplit 或 ,vs 垂直分屏
  3. 打开不同文件
  4. 显示多窗口编辑
EOF
take_screenshot "features/split-windows.png" "分屏编辑"

# 6. 编程效果
cat << 'EOF'
准备截图 6: 实际编程
操作步骤:
  1. 打开一个实际的代码文件
  2. 显示语法高亮、行号、缩进线
  3. 展示编辑效果
EOF
take_screenshot "features/coding.png" "实际编程"

# 主题截图
echo
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  主题效果截图"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo

themes=("gruvbox" "dracula" "onedark" "nord" "tokyonight" "palenight" "iceberg" "molokai" "solarized")

for theme in "${themes[@]}"; do
    cat << EOF
准备截图: $theme 主题
操作步骤:
  1. 在 vim 中输入: :colorscheme $theme
  2. 打开一个代码文件
  3. 截取编辑界面
EOF
    take_screenshot "themes/theme-${theme}.png" "${theme} 主题"
done

# 完成
echo
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "${GREEN}✓${NC} 截图流程完成！"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo
echo "截图保存在:"
echo "  $SCREENSHOT_DIR/"
echo
echo "查看截图:"
ls -lh "$SCREENSHOT_DIR"/*.png 2>/dev/null && echo
ls -lh "$SCREENSHOT_DIR"/*/*.png 2>/dev/null
echo
echo "下一步:"
echo "  1. 查看截图质量"
echo "  2. 优化图片大小（可选）: mogrify -resize 1920x1080 screenshots/*.png"
echo "  3. 更新 README.md 添加截图链接"
echo "  4. 提交到 git: git add screenshots/ && git commit -m 'Add: Project screenshots'"
echo

