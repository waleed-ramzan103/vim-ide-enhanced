# Vim IDE Enhanced - 快捷键速查卡

打印此页面，贴在桌边，随时查阅！ 📌

---

## ⚡ 最常用快捷键（必记！）

```
F3              打开/关闭文件树
F4              打开/关闭函数列表
Ctrl-p          搜索文件
空格键           折叠/展开代码
gcc             注释/取消注释当前行
,w              保存
,q              退出
```

---

## 🎯 功能键 (F1-F12)

```
F3      文件浏览器 (NERDTree)
F4      函数列表 (Tagbar)
F5      刷新 + 重建tags
F6      显示/隐藏空白字符
F7      上一个文件
F8      下一个文件
F9      编译 (:make)
F12     粘贴模式开关
```

---

## 🪟 窗口管理

```
Ctrl-h          跳到左边窗口
Ctrl-j          跳到下方窗口
Ctrl-k          跳到上方窗口
Ctrl-l          跳到右边窗口
,vs             垂直分屏
,hs             水平分屏
```

---

## 📝 编辑操作

```
,w              保存
,q              退出
,x              保存并退出
空格键           折叠/展开
gcc             注释/取消注释当前行
gc (visual)     注释/取消注释选中
Alt-j           向下移动当前行
Alt-k           向上移动当前行
H               行首
L               行尾
```

---

## 🔍 搜索导航

```
Ctrl-p          模糊搜索文件
,<Enter>        取消高亮
/pattern        向下搜索
?pattern        向上搜索
n               下一个匹配
N               上一个匹配
*               搜索当前单词
```

---

## 🔧 Cscope 代码导航

```
,fa             交互式查找
,fs             查找符号
,fg             查找定义
,fd             查找被调用的函数
,fc             查找函数调用
,ft             查找文本
,fe             查找正则
,ff             查找文件
,fi             查找包含文件
```

---

## 🌳 NERDTree 操作

```
o               打开文件/目录
t               新标签页打开
i               水平分屏打开
s               垂直分屏打开
p               到父目录
P               到根目录
m               文件操作菜单
r               刷新目录
I               显示/隐藏隐藏文件
q               关闭NERDTree
```

---

## 📋 Tagbar 操作

```
Enter           跳到标签
p               预览
+/zo            展开折叠
-/zc            收起折叠
*/zR            展开所有
=/zM            收起所有
s               切换排序
q               关闭Tagbar
```

---

## 📁 代码折叠

```
空格键           切换折叠
zo              打开折叠
zc              关闭折叠
zR              打开所有折叠
zM              关闭所有折叠
```

---

## ⚙️ 配置管理

```
,ev             编辑vimrc
,sv             重新加载vimrc
```

---

## 🎨 Visual 模式

```
v               字符选择
V               行选择
Ctrl-v          块选择
gc              注释/取消注释选中
=               自动缩进
>               增加缩进
<               减少缩进
```

---

## 💾 Buffer 管理

```
F7              上一个buffer
F8              下一个buffer
:ls             列出所有buffer
:bn             下一个buffer
:bp             上一个buffer
:bd             删除buffer
:b<number>      跳到指定buffer
```

---

## 🔢 多文件操作

```
:e file         打开文件
:tabe file      新标签页打开
:split file     水平分屏打开
:vsplit file    垂直分屏打开
gt              下一个标签页
gT              上一个标签页
```

---

## 🚀 高级技巧

### 快速跳转
```
gg              文件开头
G               文件结尾
:123            跳到第123行
123G            跳到第123行
%               跳到匹配的括号
```

### 标记和跳转
```
ma              设置标记a
'a              跳到标记a
'.              跳到上次修改位置
''              跳到上次位置
```

### 撤销/重做
```
u               撤销
Ctrl-r          重做
```

### 宏录制
```
qa              录制宏到寄存器a
q               停止录制
@a              执行宏a
@@              重复上次宏
```

### 批量替换
```
:%s/old/new/g           全文替换
:%s/old/new/gc          全文替换（确认）
:10,20s/old/new/g       10-20行替换
```

---

## 🛠️ 命令行常用命令

```
:w              保存
:q              退出
:wq 或 :x       保存并退出
:q!             强制退出不保存
:wa             保存所有
:qa             退出所有
:help <keyword> 查看帮助
:PlugInstall    安装插件
:PlugUpdate     更新插件
:MakeTags       生成ctags
:MakeCscope     生成cscope数据库
:MakeAll        生成tags和cscope
```

---

## 📊 项目准备

在项目根目录执行：

```bash
# 生成 ctags（用于 F4 和代码跳转）
ctags -R .

# 生成 cscope 数据库（用于符号查找）
find . -name "*.c" -o -name "*.h" > cscope.files
cscope -bkq -i cscope.files
```

---

## 💡 入门建议

1. **第一周**：只记住 `F3`（文件树）、`Ctrl-p`（搜索）、`,w`（保存）、`,q`（退出）
2. **第二周**：学会 `F4`（函数列表）、`空格`（折叠）、`gcc`（注释）
3. **第三周**：掌握窗口切换 `Ctrl-h/j/k/l`、分屏 `,vs/,hs`
4. **第四周**：学习 Cscope 代码导航 `,fg/,fs/,fc`

---

**🎯 每天进步一点点，很快就能成为 Vim 高手！**

打印提示：建议双面打印，正面常用快捷键，背面高级技巧！

