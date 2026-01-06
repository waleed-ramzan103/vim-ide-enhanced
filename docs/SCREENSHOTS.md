# 截图说明

为了让其他用户更好地了解 Vim IDE Enhanced 的功能，你可以添加以下截图：

## 📸 建议的截图

### 1. 主界面截图
**文件名**: `screenshots/main-interface.png`

展示内容：
- 左侧：NERDTree 文件树（F3）
- 中间：代码编辑区
- 右侧：Tagbar 函数列表（F4）
- 底部：Airline 状态栏

### 2. 文件浏览器
**文件名**: `screenshots/nerdtree.png`

展示 NERDTree 的：
- 目录结构
- Git 状态显示
- 文件图标（如果有）

### 3. 函数列表
**文件名**: `screenshots/tagbar.png`

展示 Tagbar 显示的：
- 函数列表
- 结构体定义
- 宏定义
- 变量声明

### 4. 模糊搜索
**文件名**: `screenshots/ctrlp.png`

展示 CtrlP 的：
- 搜索界面
- 文件匹配结果
- 搜索路径

### 5. 代码编辑
**文件名**: `screenshots/coding.png`

展示：
- 语法高亮
- 自动补全
- 代码折叠
- 行号显示
- 缩进线

### 6. 分屏编辑
**文件名**: `screenshots/split-windows.png`

展示：
- 多窗口布局
- 同时编辑多个文件

### 7. Cscope 使用
**文件名**: `screenshots/cscope.png`

展示：
- Cscope 查找结果
- 快速跳转功能

### 8. 主题展示
**文件名**: `screenshots/theme-*.png`

分别展示：
- Gruvbox 主题
- OneDark 主题
- Molokai 主题

## 🎬 创建 GIF 动画

使用工具如 [asciinema](https://asciinema.org/) 或 [terminalizer](https://github.com/faressoft/terminalizer) 录制以下操作：

### 1. 快速入门演示
**文件名**: `screenshots/quickstart.gif`

演示：
1. 打开 vim
2. 按 F3 打开文件树
3. 选择文件打开
4. 按 F4 显示函数列表
5. 跳转到函数
6. 编辑代码
7. 保存退出

### 2. 文件搜索演示
**文件名**: `screenshots/file-search.gif`

演示：
1. 按 Ctrl-P
2. 输入文件名
3. 快速打开文件

### 3. 代码导航演示
**文件名**: `screenshots/code-navigation.gif`

演示：
1. 使用 ,fg 查找定义
2. 使用 ,fs 查找符号
3. 使用 ,fc 查找调用

## 📐 截图规范

### 终端设置
- **尺寸**: 120x30 或 100x25
- **字体**: Monospace, 12-14pt
- **配色**: 使用 gruvbox 主题（默认）

### 文件准备
- 使用有代表性的代码文件
- 代码应该清晰、易读
- 避免包含敏感信息

### 质量要求
- 清晰度：高清，不模糊
- 完整性：包含必要的界面元素
- 美观性：排版整洁，色彩协调

## 🛠️ 截图工具推荐

### Linux
- **flameshot** - 功能丰富的截图工具
  ```bash
  sudo apt-get install flameshot
  ```
- **gnome-screenshot** - GNOME 默认截图工具
- **scrot** - 命令行截图工具

### macOS
- **Command + Shift + 4** - 系统自带截图
- **iTerm2 built-in** - iTerm2 内置截图功能

### Windows
- **Snipping Tool** - 系统自带工具
- **ShareX** - 强大的开源截图工具

### 录制 GIF
- **asciinema** - 录制终端会话
  ```bash
  # 安装
  pip3 install asciinema
  
  # 录制
  asciinema rec demo.cast
  
  # 转换为 GIF
  sudo npm install -g asciicast2gif
  asciicast2gif demo.cast demo.gif
  ```

- **terminalizer** - 录制和分享终端
  ```bash
  npm install -g terminalizer
  terminalizer record demo
  terminalizer render demo
  ```

- **peek** - Linux 下简单的 GIF 录制工具
  ```bash
  sudo add-apt-repository ppa:peek-developers/stable
  sudo apt update
  sudo apt install peek
  ```

## 📁 目录结构

创建截图目录：

```bash
mkdir -p screenshots
```

建议的目录结构：
```
screenshots/
├── main-interface.png        # 主界面
├── nerdtree.png              # 文件树
├── tagbar.png                # 函数列表
├── ctrlp.png                 # 文件搜索
├── coding.png                # 代码编辑
├── split-windows.png         # 分屏
├── cscope.png                # 代码导航
├── theme-gruvbox.png         # Gruvbox主题
├── theme-onedark.png         # OneDark主题
├── theme-molokai.png         # Molokai主题
├── quickstart.gif            # 快速入门演示
├── file-search.gif           # 文件搜索演示
└── code-navigation.gif       # 代码导航演示
```

## 🎨 在 README 中使用截图

创建截图后，在 README.md 中添加：

```markdown
## 🖼️ 界面预览

### 主界面
![主界面](screenshots/main-interface.png)

### 文件浏览器（NERDTree）
![NERDTree](screenshots/nerdtree.png)

### 函数列表（Tagbar）
![Tagbar](screenshots/tagbar.png)

### 快速入门
![快速入门](screenshots/quickstart.gif)
```

## ✅ 截图检查清单

在添加截图前，确保：

- [ ] 截图清晰，分辨率适当
- [ ] 没有包含个人敏感信息
- [ ] 文件大小合理（PNG < 500KB, GIF < 5MB）
- [ ] 文件命名规范
- [ ] 展示的功能正确
- [ ] 颜色和字体清晰可读

## 🔄 更新截图

如果配置有重大更新，记得更新相应的截图。

---

**注意**: 目前仓库中还没有截图，欢迎贡献！

