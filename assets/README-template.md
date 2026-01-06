# Vim IDE Enhanced - 强大的 Vim IDE 配置

<div align="center">

```
██╗   ██╗██╗███╗   ███╗    ██╗██████╗ ███████╗
██║   ██║██║████╗ ████║    ██║██╔══██╗██╔════╝
██║   ██║██║██╔████╔██║    ██║██║  ██║█████╗  
╚██╗ ██╔╝██║██║╚██╔╝██║    ██║██║  ██║██╔══╝  
 ╚████╔╝ ██║██║ ╚═╝ ██║    ██║██████╔╝███████╗
  ╚═══╝  ╚═╝╚═╝     ╚═╝    ╚═╝╚═════╝ ╚══════╝
                                               
███████╗███╗   ██╗██╗  ██╗ █████╗ ███╗   ██╗ ██████╗███████╗██████╗ 
██╔════╝████╗  ██║██║  ██║██╔══██╗████╗  ██║██╔════╝██╔════╝██╔══██╗
█████╗  ██╔██╗ ██║███████║███████║██╔██╗ ██║██║     █████╗  ██║  ██║
██╔══╝  ██║╚██╗██║██╔══██║██╔══██║██║╚██╗██║██║     ██╔══╝  ██║  ██║
███████╗██║ ╚████║██║  ██║██║  ██║██║ ╚████║╚██████╗███████╗██████╔╝
╚══════╝╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝╚══════╝╚═════╝ 
```

**🚀 Transform Vim into a Powerful IDE for C/C++/Python Development**

[![Vim Version](https://img.shields.io/badge/Vim-8.0%2B-green.svg)](https://www.vim.org/)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/TbusOS/vim-ide-enhanced?style=social)](https://github.com/TbusOS/vim-ide-enhanced)
[![GitHub forks](https://img.shields.io/github/forks/TbusOS/vim-ide-enhanced?style=social)](https://github.com/TbusOS/vim-ide-enhanced)

[English](#) | [简体中文](README_CN.md)

</div>

---

## 🖼️ 界面预览

### 主界面
<div align="center">
  <img src="screenshots/main-interface.png" alt="主界面" width="800">
  <p><i>文件树（左） + 代码编辑区（中） + 函数列表（右）</i></p>
</div>

### 🎬 快速演示

#### 快速上手
<div align="center">
  <img src="screenshots/demos/quickstart.gif" alt="快速上手" width="600">
  <p><i>打开vim → F3文件树 → F4函数列表 → 编辑保存</i></p>
</div>

#### 文件搜索
<div align="center">
  <img src="screenshots/demos/file-search.gif" alt="文件搜索" width="600">
  <p><i>Ctrl-P 快速搜索并打开文件</i></p>
</div>

#### 代码导航
<div align="center">
  <img src="screenshots/demos/code-navigation.gif" alt="代码导航" width="600">
  <p><i>使用 Cscope 快速查找定义、引用和调用</i></p>
</div>

---

## ✨ 核心功能

<table>
<tr>
<td width="50%">

### 📁 文件管理
- 🌳 **NERDTree** - 文件树浏览器（F3）
- 🔍 **CtrlP** - 模糊文件搜索（Ctrl-P）
- 📋 **Tagbar** - 函数/标签列表（F4）

### 🎨 界面美化
- ✈️ **Airline** - 美化状态栏
- 🎨 **9个主题** - Gruvbox、Dracula、Nord等
- 📐 **缩进线** - 清晰的代码结构
- 🌈 **语法高亮** - C/C++/Python 增强

</td>
<td width="50%">

### ⚡ 编辑增强
- 💡 **自动补全** - 括号、引号自动配对
- 💬 **快速注释** - gcc 注释/取消注释
- 🔀 **多光标** - 同时编辑多处
- ⚡ **快速跳转** - EasyMotion

### 🔧 代码导航
- 🎯 **Cscope** - 符号查找和跳转
- 🔍 **定义查找** - ,fg 查找定义
- 📊 **引用查找** - ,fs 查找符号
- 🔗 **调用查找** - ,fc 查找调用

</td>
</tr>
</table>

---

## 🎨 主题展示

<div align="center">

### Gruvbox (默认)
<img src="screenshots/themes/theme-gruvbox.png" alt="Gruvbox" width="700">

### Dracula
<img src="screenshots/themes/theme-dracula.png" alt="Dracula" width="700">

### Nord
<img src="screenshots/themes/theme-nord.png" alt="Nord" width="700">

<details>
<summary><b>查看更多主题 →</b></summary>

### Tokyo Night
<img src="screenshots/themes/theme-tokyonight.png" alt="Tokyo Night" width="700">

### OneDark
<img src="screenshots/themes/theme-onedark.png" alt="OneDark" width="700">

### Palenight
<img src="screenshots/themes/theme-palenight.png" alt="Palenight" width="700">

### Iceberg
<img src="screenshots/themes/theme-iceberg.png" alt="Iceberg" width="700">

### Molokai
<img src="screenshots/themes/theme-molokai.png" alt="Molokai" width="700">

### Solarized
<img src="screenshots/themes/theme-solarized.png" alt="Solarized" width="700">

</details>

</div>

---

## 📚 功能展示

<table>
<tr>
<td><img src="screenshots/features/nerdtree.png" alt="NERDTree" width="350"></td>
<td><img src="screenshots/features/tagbar.png" alt="Tagbar" width="350"></td>
</tr>
<tr>
<td align="center"><b>📁 NERDTree 文件浏览器</b><br>按 F3 打开/关闭</td>
<td align="center"><b>📋 Tagbar 函数列表</b><br>按 F4 打开/关闭</td>
</tr>
<tr>
<td><img src="screenshots/features/ctrlp.png" alt="CtrlP" width="350"></td>
<td><img src="screenshots/features/split-windows.png" alt="分屏" width="350"></td>
</tr>
<tr>
<td align="center"><b>🔍 CtrlP 模糊搜索</b><br>按 Ctrl-P 快速查找文件</td>
<td align="center"><b>🪟 分屏编辑</b><br>同时编辑多个文件</td>
</tr>
</table>

---

## 📦 快速安装

### 方法 1：一键安装（推荐）

```bash
git clone https://github.com/TbusOS/vim-ide-enhanced.git
cd vim-ide-enhanced
bash install.sh
```

### 方法 2：手动安装

```bash
# 1. 备份原有配置
mv ~/.vimrc ~/.vimrc.bak

# 2. 复制配置文件
cp vimrc ~/.vimrc

# 3. 安装 vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# 4. 安装插件
vim +PlugInstall +qall
```

---

## 📚 文档导航

<div align="center">

| 文档 | 说明 |
|------|------|
| 🚀 [快速上手](docs/QUICKSTART.md) | 5分钟入门指南 |
| 🔌 [插件管理](docs/PLUGIN_MANAGEMENT.md) | 完整插件管理指南 |
| 📋 [快捷键速查](docs/CHEATSHEET.md) | 可打印参考卡片 |
| 🎨 [主题指南](docs/THEMES.md) | 9个主题详解 |
| 🤝 [贡献指南](docs/CONTRIBUTING.md) | 如何参与项目 |
| 📝 [更新日志](docs/CHANGELOG.md) | 版本更新记录 |

</div>

---

## ⌨️ 核心快捷键

<table>
<tr>
<th width="25%">功能键</th>
<th width="25%">编辑</th>
<th width="25%">导航</th>
<th width="25%">窗口</th>
</tr>
<tr>
<td>

**F3** - 文件树  
**F4** - 函数列表  
**F5** - 刷新tags  
**F7/F8** - 切换文件  
**Ctrl-P** - 搜索文件  

</td>
<td>

**gcc** - 注释行  
**空格** - 折叠代码  
**,w** - 保存  
**,q** - 退出  
**,x** - 保存退出  

</td>
<td>

**,fg** - 查找定义  
**,fs** - 查找符号  
**,fc** - 查找调用  
**Ctrl-]** - 跳转定义  
**Ctrl-t** - 返回  

</td>
<td>

**Ctrl-h/j/k/l** - 切换窗口  
**,vs** - 垂直分屏  
**,hs** - 水平分屏  

</td>
</tr>
</table>

[📋 完整快捷键列表](docs/CHEATSHEET.md)

---

## 🌟 项目特色

<div align="center">

| 特色 | 说明 |
|:----:|------|
| ⚡ **开箱即用** | 一键安装，无需复杂配置 |
| 🎨 **9个主题** | Gruvbox、Dracula、Nord等精选主题 |
| 📦 **27个插件** | 精心挑选，覆盖所有IDE功能 |
| ⌨️ **60+快捷键** | 高效编辑，提升生产力 |
| 📚 **完整文档** | 中英文文档，新手友好 |
| 🔧 **易于定制** | 清晰注释，轻松修改 |
| 🌍 **国际化** | 支持多语言开发 |
| 🆓 **开源免费** | MIT 许可证 |

</div>

---

## 🎯 使用场景

✅ **C/C++ 开发** - Cscope导航、语法高亮、代码补全  
✅ **Python 开发** - PEP8支持、语法检查、智能缩进  
✅ **Shell 脚本** - 语法高亮、自动补全  
✅ **文本编辑** - Markdown、配置文件等  
✅ **代码审查** - 快速浏览大型项目  
✅ **远程开发** - SSH环境下的强大IDE  

---

## 🏆 为什么选择这个配置？

<table>
<tr>
<td width="50%">

### ✅ 优势

- 🚀 **性能优异** - 启动快速，响应灵敏
- 💪 **功能强大** - 媲美现代IDE
- 🎯 **专注开发** - 专为C/C++/Python优化
- 📖 **文档齐全** - 详细的中英文文档
- 🔧 **易于扩展** - 清晰的配置结构
- 🌈 **美观舒适** - 精美主题，护眼配色

</td>
<td width="50%">

### 💡 与其他配置的区别

- **vs SpaceVim** - 更轻量，启动更快
- **vs LunarVim** - 更简单，易于理解
- **vs NvChad** - 支持原生Vim，兼容性好
- **vs 原生Vim** - 开箱即用，无需配置
- **vs IDE** - 占用资源少，SSH可用

</td>
</tr>
</table>

---

## 📊 项目统计

<div align="center">

| 统计项 | 数值 |
|:------:|:----:|
| 📦 插件数量 | 27 |
| 🎨 主题数量 | 9 |
| ⌨️ 快捷键 | 60+ |
| 📝 配置行数 | 419 |
| 📚 文档页数 | 9 |
| 🌟 GitHub Stars | ⭐ |
| 🍴 Forks | 🍴 |

</div>

---

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！

查看 [贡献指南](docs/CONTRIBUTING.md) 了解如何参与项目。

---

## 📄 许可证

[MIT License](LICENSE) - 自由使用、修改、分发

---

## 🙏 鸣谢

感谢所有优秀的 Vim 插件作者和开源社区！

<details>
<summary><b>插件列表</b></summary>

- [vim-plug](https://github.com/junegunn/vim-plug) - 插件管理器
- [NERDTree](https://github.com/preservim/nerdtree) - 文件浏览器
- [Tagbar](https://github.com/preservim/tagbar) - 标签浏览器
- [vim-airline](https://github.com/vim-airline/vim-airline) - 状态栏
- [CtrlP](https://github.com/ctrlpvim/ctrlp.vim) - 模糊搜索
- [Gruvbox](https://github.com/morhetz/gruvbox) - 主题
- [Dracula](https://github.com/dracula/vim) - 主题
- ... 以及其他 20+ 个优秀插件

</details>

---

<div align="center">

**⭐ 如果觉得有用，请给个 Star！**

**📧 问题反馈：** [提交 Issue](https://github.com/TbusOS/vim-ide-enhanced/issues)

**💬 讨论交流：** [Discussions](https://github.com/TbusOS/vim-ide-enhanced/discussions)

Made with ❤️ by Vim enthusiasts

</div>

