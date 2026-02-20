#!/bin/bash

# 一键部署脚本
# 清理缓存 -> 构建静态文件 -> 部署到 GitHub Pages

echo "开始部署博客..."
echo "------------------"

# 清理缓存
echo "1. 清理缓存..."
npm run clean

if [ $? -ne 0 ]; then
  echo "清理缓存失败！"
  exit 1
fi

echo "清理缓存成功！"
echo "------------------"

# 构建静态文件
echo "2. 构建静态文件..."
npm run build

if [ $? -ne 0 ]; then
  echo "构建失败！"
  exit 1
fi

echo "构建成功！"
echo "------------------"

# 部署到 GitHub Pages
echo "3. 部署到 GitHub Pages..."
npm run deploy

if [ $? -ne 0 ]; then
  echo "部署失败！"
  exit 1
fi

echo "------------------"
echo "部署成功！"
echo "请访问 https://yourusername.github.io 查看博客（将 yourusername 替换为你的 GitHub 用户名）"
