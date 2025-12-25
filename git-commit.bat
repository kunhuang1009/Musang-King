@echo off
chcp 65001 >nul
echo ========================================
echo Git 提交脚本
echo ========================================
echo.

echo [1/5] 检查当前状态...
git status
echo.

echo [2/5] 添加所有修改的文件...
git add index.html
git add index.js
git add .htaccess
git add "优化文档.md"
echo.

echo [3/5] 查看将要提交的文件...
git status --short
echo.

echo [4/5] 提交更改...
git commit -m "优化网页加载速度：实现秒开网页

- 添加资源预加载和DNS预解析
- 实现渐进式加载（音频延迟加载）
- 移除所有资源的时间戳参数，启用缓存
- 增加并发连接数优化加载速度
- 添加服务器缓存和压缩配置
- 修复白屏问题，确保动画正常显示"
echo.

echo [5/5] 推送到远程仓库...
echo 当前分支: master
echo 远程仓库: origin
echo.
git push origin master
echo.

echo ========================================
echo 提交完成！
echo ========================================
pause

