# 📸 项目媒体资源制作指南

本指南帮助你创建项目的截图、GIF演示和Logo。

## 📁 目录结构

```
vim-ide-enhanced/
├── screenshots/           # 截图目录
│   ├── main-interface.png       # 主界面
│   ├── features/               # 功能截图
│   │   ├── nerdtree.png
│   │   ├── tagbar.png
│   │   ├── ctrlp.png
│   │   ├── split-windows.png
│   │   └── coding.png
│   ├── themes/                 # 主题截图
│   │   ├── theme-gruvbox.png
│   │   ├── theme-dracula.png
│   │   └── ... (9个主题)
│   └── demos/                  # GIF演示
│       ├── quickstart.gif
│       ├── file-search.gif
│       ├── code-navigation.gif
│       ├── theme-switching.gif
│       └── shortcuts.gif
├── assets/                # 设计资源
│   ├── logo.txt              # ASCII Logo
│   ├── logo-simple.txt       # 简化Logo
│   └── README-template.md    # 带截图的README模板
└── tools/                 # 制作工具
    ├── create-screenshots.sh  # 截图脚本
    └── create-demo-gif.sh    # GIF录制脚本
```

---

## 🎨 1. Logo 设计

### 已创建的 Logo

#### 大Logo (logo.txt)
```
██╗   ██╗██╗███╗   ███╗    ██╗██████╗ ███████╗
██║   ██║██║████╗ ████║    ██║██╔══██╗██╔════╝
██║   ██║██║██╔████╔██║    ██║██║  ██║█████╗  
╚██╗ ██╔╝██║██║╚██╔╝██║    ██║██║  ██║██╔══╝  
 ╚████╔╝ ██║██║ ╚═╝ ██║    ██║██████╔╝███████╗
  ╚═══╝  ╚═╝╚═╝     ╚═╝    ╚═╝╚═════╝ ╚══════╝
```

**用途**：
- GitHub README 顶部
- 项目文档封面
- 社交媒体分享

**查看**：
```bash
cat assets/logo.txt
```

#### 简化Logo (logo-simple.txt)
```
╔════════════════════════════════════╗
║        VIM IDE ENHANCED            ║
║    Transform Vim into Powerful IDE ║
║    🚀 Fast  📝 Smart  ⚡ Efficient  ║
╚════════════════════════════════════╝
```

**用途**：
- 终端欢迎信息
- 安装脚本输出
- 命令行工具

**查看**：
```bash
cat assets/logo-simple.txt
```

### 使用 Logo

**在 README 中使用**：
```markdown
<div align="center">

\`\`\`
[粘贴 logo.txt 的内容]
\`\`\`

</div>
```

**在脚本中使用**：
```bash
cat assets/logo-simple.txt
echo "Version 1.2.0"
```

---

## 📸 2. 项目截图

### 自动截图工具

```bash
# 运行截图脚本
bash tools/create-screenshots.sh
```

**脚本功能**：
- ✅ 自动检测截图工具
- ✅ 创建截图目录
- ✅ 提供详细操作指南
- ✅ 分类组织截图

### 需要的截图列表

#### 主要截图 (6张)

1. **main-interface.png** - 完整界面
   - 左侧：NERDTree 文件树
   - 中间：代码编辑区
   - 右侧：Tagbar 函数列表
   - 底部：Airline 状态栏
   - **尺寸**：1920x1080 或 1600x900
   - **重要性**：⭐⭐⭐⭐⭐

2. **features/nerdtree.png** - 文件浏览器
   - 按 F3 打开 NERDTree
   - 展开几个目录
   - 显示文件图标和Git状态
   - **尺寸**：800x600
   - **重要性**：⭐⭐⭐⭐

3. **features/tagbar.png** - 函数列表
   - 按 F4 打开 Tagbar
   - 打开一个有多个函数的C文件
   - 显示函数、结构体、变量
   - **尺寸**：600x800
   - **重要性**：⭐⭐⭐⭐

4. **features/ctrlp.png** - 模糊搜索
   - 按 Ctrl-P
   - 输入搜索关键词
   - 显示匹配结果列表
   - **尺寸**：1200x400
   - **重要性**：⭐⭐⭐⭐

5. **features/split-windows.png** - 分屏编辑
   - 垂直或水平分屏
   - 打开不同的文件
   - 展示多窗口工作流
   - **尺寸**：1600x900
   - **重要性**：⭐⭐⭐

6. **features/coding.png** - 实际编程
   - 打开真实代码文件
   - 显示语法高亮
   - 显示行号、缩进线
   - **尺寸**：1200x800
   - **重要性**：⭐⭐⭐⭐

#### 主题截图 (9张)

每个主题一张截图，展示编辑界面：

1. theme-gruvbox.png ⭐ (默认主题)
2. theme-dracula.png
3. theme-onedark.png
4. theme-nord.png
5. theme-tokyonight.png
6. theme-palenight.png
7. theme-iceberg.png
8. theme-molokai.png
9. theme-solarized.png

**要求**：
- 打开同一个代码文件（便于对比）
- 显示状态栏和行号
- **尺寸**：1400x800
- **重要性**：⭐⭐⭐

### 截图技巧

#### 终端设置
```bash
# 设置合适的终端大小
resize -s 30 120  # 30行 x 120列

# 设置字体大小（根据截图工具调整）
# 建议 12-14pt，确保清晰可读
```

#### 代码准备
```c
// 使用一个示例C文件，包含：
// - 头文件包含
// - 结构体定义
// - 函数声明和实现
// - 注释
// - 适当的缩进

#include <stdio.h>
#include <stdlib.h>

struct Person {
    char name[50];
    int age;
};

void print_person(struct Person *p) {
    printf("Name: %s, Age: %d\n", p->name, p->age);
}

int main() {
    struct Person person = {"Alice", 30};
    print_person(&person);
    return 0;
}
```

#### 截图工具

**选项 1：Flameshot (推荐)**
```bash
# 安装
sudo apt install flameshot

# 使用
flameshot gui -p screenshots/
```

**选项 2：Gnome Screenshot**
```bash
# 使用
gnome-screenshot -a -f screenshots/output.png
```

**选项 3：Scrot**
```bash
# 安装
sudo apt install scrot

# 使用
scrot -s screenshots/output.png
```

#### 优化截图

```bash
# 压缩图片（减小文件大小）
sudo apt install imagemagick
mogrify -quality 85 -resize 1920x1080 screenshots/*.png

# 或使用 optipng
sudo apt install optipng
optipng -o7 screenshots/*.png

# 批量处理
for f in screenshots/*.png; do
    convert "$f" -quality 85 "$f"
done
```

---

## 🎬 3. GIF 演示

### 自动GIF录制工具

```bash
# 运行GIF录制脚本
bash tools/create-demo-gif.sh
```

**脚本功能**：
- ✅ 检测录制工具
- ✅ 提供安装指南
- ✅ 创建演示脚本
- ✅ 提供录制技巧

### 需要的 GIF 列表

#### 1. quickstart.gif - 快速上手 ⭐⭐⭐⭐⭐
**时长**：10-15秒  
**内容**：
```
1. vim [文件]         (2秒)
2. F3 打开文件树       (2秒)
3. 选择文件打开        (2秒)
4. F4 显示函数列表     (2秒)
5. 跳转到函数         (2秒)
6. 简单编辑           (2秒)
7. ,w 保存, ,q 退出   (2秒)
```

#### 2. file-search.gif - 文件搜索 ⭐⭐⭐⭐
**时长**：5-8秒  
**内容**：
```
1. vim                (1秒)
2. Ctrl-P            (1秒)
3. 输入文件名         (2秒)
4. 显示匹配结果       (2秒)
5. 回车打开文件       (2秒)
```

#### 3. code-navigation.gif - 代码导航 ⭐⭐⭐⭐
**时长**：8-10秒  
**内容**：
```
1. vim example.c      (2秒)
2. ,fg 查找定义       (2秒)
3. ,fs 查找符号       (2秒)
4. ,fc 查找调用       (2秒)
5. 显示结果列表       (2秒)
```

#### 4. theme-switching.gif - 主题切换 ⭐⭐⭐
**时长**：8-10秒  
**内容**：
```
1. vim example.c                (1秒)
2. :colorscheme dracula        (2秒)
3. :colorscheme nord           (2秒)
4. :colorscheme tokyonight     (2秒)
5. :colorscheme gruvbox        (1秒)
```

#### 5. shortcuts.gif - 快捷键演示 ⭐⭐⭐
**时长**：10-12秒  
**内容**：
```
1. F3 开关文件树      (2秒)
2. F4 开关函数列表    (2秒)
3. gcc 注释代码       (2秒)
4. 空格 折叠代码      (2秒)
5. ,w 保存           (2秒)
```

### GIF 录制工具

#### 选项 1：Peek (推荐) ⭐⭐⭐⭐⭐
```bash
# 安装
sudo add-apt-repository ppa:peek-developers/stable
sudo apt update
sudo apt install peek

# 使用
1. 启动 peek
2. 调整录制区域（框住终端）
3. 点击录制按钮
4. 执行演示操作
5. 点击停止
6. 保存 GIF
```

**优点**：
- 简单易用
- 实时预览
- 支持暂停
- 质量可调

#### 选项 2：Terminalizer ⭐⭐⭐⭐
```bash
# 安装
sudo npm install -g terminalizer

# 录制
terminalizer record demo

# 播放
terminalizer play demo

# 渲染
terminalizer render demo
```

**优点**：
- 可编辑录制内容
- 可调整速度
- 可添加水印

#### 选项 3：Asciinema + agg ⭐⭐⭐
```bash
# 安装
sudo apt install asciinema
pip3 install agg

# 录制
asciinema rec demo.cast

# 转GIF
agg demo.cast demo.gif
```

**优点**：
- 文件小
- 可编辑
- 清晰度高

### GIF 录制技巧

#### 准备工作
```bash
# 1. 设置终端大小
resize -s 30 100  # 100列x30行

# 2. 清除历史
clear
history -c

# 3. 设置录制区域
# 确保只录制终端窗口，不包含其他内容

# 4. 准备演示内容
# 提前准备好要打开的文件和命令
```

#### 录制注意事项
- ⏱️ **控制时长**：每个GIF 5-15秒
- 🎯 **专注重点**：一个GIF展示一个功能
- ⚡ **操作流畅**：避免停顿和失误
- 🔤 **字体清晰**：选择合适的字体大小
- 🎨 **主题统一**：使用同一个主题录制

#### 优化 GIF
```bash
# 使用 gifsicle 优化
sudo apt install gifsicle
gifsicle -O3 input.gif -o output.gif

# 调整大小
gifsicle --resize 800x600 input.gif -o output.gif

# 减少帧数
gifsicle --colors 256 input.gif -o output.gif

# 目标文件大小：< 5MB
```

---

## 📤 4. 使用媒体资源

### 更新 README

使用提供的模板：

```bash
# 查看模板
cat assets/README-template.md

# 或替换现有 README
cp assets/README-template.md README.md
# 记得替换 TbusOS
```

### 上传到 GitHub

```bash
# 添加所有媒体文件
git add screenshots/ assets/

# 提交
git commit -m "Add: Project screenshots, GIFs and logo

- Screenshots of main interface and features
- 9 theme screenshots  
- 5 GIF demonstrations
- ASCII logo designs
- Media creation tools"

# 推送
git push origin main
```

### 在文档中引用

#### Markdown 中使用截图
```markdown
![主界面](screenshots/main-interface.png)

<img src="screenshots/main-interface.png" alt="主界面" width="800">
```

#### Markdown 中使用 GIF
```markdown
![快速演示](screenshots/demos/quickstart.gif)

<div align="center">
  <img src="screenshots/demos/quickstart.gif" width="600">
</div>
```

---

## ✅ 检查清单

### 截图清单
- [ ] main-interface.png - 主界面
- [ ] features/nerdtree.png - 文件浏览器
- [ ] features/tagbar.png - 函数列表
- [ ] features/ctrlp.png - 模糊搜索
- [ ] features/split-windows.png - 分屏
- [ ] features/coding.png - 编程效果
- [ ] themes/theme-gruvbox.png
- [ ] themes/theme-dracula.png
- [ ] themes/theme-onedark.png
- [ ] themes/theme-nord.png
- [ ] themes/theme-tokyonight.png
- [ ] themes/theme-palenight.png
- [ ] themes/theme-iceberg.png
- [ ] themes/theme-molokai.png
- [ ] themes/theme-solarized.png

### GIF 清单
- [ ] demos/quickstart.gif - 快速上手
- [ ] demos/file-search.gif - 文件搜索
- [ ] demos/code-navigation.gif - 代码导航
- [ ] demos/theme-switching.gif - 主题切换
- [ ] demos/shortcuts.gif - 快捷键演示

### Logo 清单
- [x] assets/logo.txt - 大Logo
- [x] assets/logo-simple.txt - 简化Logo

### 文档清单
- [x] assets/README-template.md - 带截图的README模板
- [x] docs/MEDIA_GUIDE.md - 本文档
- [ ] README.md - 更新后的主README

---

## 🎯 质量标准

### 截图质量
- ✅ 分辨率清晰（至少 1200px 宽）
- ✅ 文字可读
- ✅ 配色协调
- ✅ 文件大小 < 500KB
- ✅ 格式：PNG

### GIF 质量
- ✅ 操作流畅
- ✅ 时长适中（5-15秒）
- ✅ 文件大小 < 5MB
- ✅ 帧率 >= 10fps
- ✅ 格式：GIF

---

## 📞 需要帮助？

- 📖 查看工具脚本：`tools/create-screenshots.sh`
- 📖 查看录制脚本：`tools/create-demo-gif.sh`
- 📖 查看README模板：`assets/README-template.md`
- 💬 提交 Issue 获取帮助

---

**🎨 创建完媒体资源后，你的项目将更加专业和吸引人！**

