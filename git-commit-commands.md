# Git 提交命令指南

## 当前状态
- **当前分支**: master
- **远程仓库**: https://github.com/kunhuang1009/Musang-King.git
- **远程分支**: main, master

## 提交步骤

### 方法一：使用批处理脚本（推荐）

直接运行 `git-commit.bat` 文件，会自动执行所有步骤。

### 方法二：手动执行命令

#### 1. 添加修改的文件
```bash
git add index.html
git add index.js
git add .htaccess
git add "优化文档.md"
```

#### 2. 查看将要提交的文件
```bash
git status
```

#### 3. 提交更改
```bash
git commit -m "优化网页加载速度：实现秒开网页

- 添加资源预加载和DNS预解析
- 实现渐进式加载（音频延迟加载）
- 移除所有资源的时间戳参数，启用缓存
- 增加并发连接数优化加载速度
- 添加服务器缓存和压缩配置
- 修复白屏问题，确保动画正常显示"
```

#### 4. 推送到远程仓库

**推送到 master 分支：**
```bash
git push origin master
```

**推送到 main 分支：**
```bash
git push origin master:main
```

**同时推送到两个分支：**
```bash
git push origin master
git push origin master:main
```

## 如果需要推送到 main 分支

如果 GitHub 的默认分支是 main，你可以：

1. **切换到 main 分支并推送：**
```bash
git checkout -b main
git push origin main
```

2. **或者直接推送当前分支到 main：**
```bash
git push origin master:main
```

## 查看远程分支
```bash
git branch -r
```

## 查看所有分支
```bash
git branch -a
```

## 注意事项

1. **.DS_Store 文件**：这是 macOS 系统文件，建议添加到 .gitignore
   ```bash
   echo .DS_Store >> .gitignore
   git add .gitignore
   ```

2. **如果遇到冲突**：先拉取远程更改
   ```bash
   git pull origin master
   ```

3. **如果第一次推送**：可能需要设置上游分支
   ```bash
   git push -u origin master
   ```

