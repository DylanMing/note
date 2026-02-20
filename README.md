# 小明的博客

这是一个使用 Hexo 搭建的个人博客，支持 Markdown 写作，自动生成静态网页，可以部署到 GitHub Pages。

## 功能特点

- ✅ 支持 Markdown 写作
- ✅ 自动生成静态网页
- ✅ 支持代码高亮
- ✅ 支持分类和标签
- ✅ 一键部署到 GitHub Pages
- ✅ 响应式设计，支持移动端
- ✅ 支持文章搜索
- ✅ 支持 RSS 订阅

## 详细流程

### 一、环境搭建

#### 1. 安装 Node.js

1. 访问 [Node.js 官网](https://nodejs.org/)
2. 下载并安装 Node.js 16.18.0 或更高版本
3. 验证安装：

   ```bash
   node -v
   npm -v
   ```

#### 2. 安装 Git

1. 访问 [Git 官网](https://git-scm.com/)
2. 下载并安装 Git
3. 验证安装：

   ```bash
   git --version
   ```

#### 3. 配置 Git 用户名和邮箱

```bash
git config --global user.name "你的用户名"
git config --global user.email "你的邮箱"
```

### 二、项目初始化

#### 1. 克隆项目（如果是从远程仓库获取）

```bash
git clone https://github.com/yourusername/yourusername.github.io.git
cd yourusername.github.io
```

#### 2. 安装依赖

```bash
npm install
```

> **重要**：如果发现样式没有生效，可能是因为缺少 `hexo-renderer-stylus` 依赖，需要单独安装：
>
> ```bash
> npm install hexo-renderer-stylus --save
> ```

### 三、本地开发

#### 1. 启动本地服务器

```bash
npm run server
```

然后访问 <http://localhost:4000> 查看博客。

#### 2. 创建新文章

```bash
hexo new "文章标题"
```

新文章会创建在 `source/_posts/` 目录下，使用 Markdown 格式编写。

#### 3. 编辑文章

使用你喜欢的 Markdown 编辑器打开 `source/_posts/文章标题.md` 文件进行编辑。

#### 4. 预览文章

在本地服务器运行的情况下，修改文章后保存，浏览器会自动刷新显示最新内容。

### 四、构建与部署

#### 1. 构建静态文件

```bash
npm run build
```

构建后的静态文件会生成在 `public/` 目录下。

#### 2. 部署到 GitHub Pages

##### 步骤 1：在 GitHub 上创建仓库

1. 登录 [GitHub](https://github.com/)
2. 点击右上角的 "+", 选择 "New repository"
3. 仓库名称填写为 `yourusername.github.io`（将 yourusername 替换为你的 GitHub 用户名）
4. 选择 "Public"
5. 点击 "Create repository"

##### 步骤 2：配置部署信息

修改 `_config.yml` 文件中的部署配置：

```yaml
deploy:
  type: git
  repo: https://github.com/yourusername/yourusername.github.io.git
  branch: main
```

##### 步骤 3：执行部署命令

```bash
npm run deploy
```

##### 步骤 4：验证部署

1. 等待几分钟后，访问 `https://yourusername.github.io` 查看博客
2. 如果看不到内容，检查 GitHub 仓库的 Actions 页面，确认部署是否成功

### 五、博客配置

#### 1. 基本配置

修改 `_config.yml` 文件中的以下字段：

```yaml
# Site
title: 你的博客标题
subtitle: 博客副标题
description: 博客描述
author: 你的名字
language: zh-CN
timezone: Asia/Shanghai

# URL
url: https://yourusername.github.io
root: /
permalink: :year/:month/:day/:title/
```

#### 2. 主题配置

默认使用 Hexo 内置的 landscape 主题。你可以：

1. 修改 `_config.landscape.yml` 文件自定义主题设置
2. 或在 [Hexo 主题库](https://hexo.io/themes/) 中选择其他主题

### 六、高级功能

#### 1. 添加分类和标签

在文章的 Front Matter 中添加：

```yaml
categories:
- 技术
- 前端
tags:
- Hexo
- Markdown
```

#### 2. 添加图片

1. 在 `source` 目录下创建 `images` 文件夹
2. 将图片放入该文件夹
3. 在文章中引用：

   ```markdown
   ![图片描述](/images/图片名称.jpg)
   ```

#### 3. 添加代码高亮

使用 Markdown 代码块语法：

````markdown
```javascript
// 这是一段 JavaScript 代码
console.log('Hello, Hexo!');
```
````

#### 4. 添加页面

创建新页面：

```bash
hexo new page "关于我"
```

然后编辑 `source/关于我/index.md` 文件。

## 目录结构

```
.
├── _config.yml           # Hexo 配置文件
├── _config.landscape.yml # 主题配置文件
├── package.json          # 项目依赖
├── package-lock.json     # 依赖版本锁定
├── source/               # 源码目录
│   ├── _posts/           # 文章目录（Markdown 文件）
│   ├── images/           # 图片目录
│   └── 关于我/            # 自定义页面
├── scaffolds/            # 文章模板
├── themes/               # 主题目录
├── public/               # 构建输出目录
└── README.md             # 项目说明文档
```

## 写作指南

### 文章格式

```markdown
---
title: 文章标题
date: 2026-02-20 12:00:00
categories:
- 分类1
- 分类2
tags:
- 标签1
- 标签2
description: 文章描述
---

# 一级标题

## 二级标题

### 三级标题

**加粗文本**

*斜体文本*

[链接文本](链接地址)

![图片描述](图片地址)

- 无序列表项 1
- 无序列表项 2

1. 有序列表项 1
2. 有序列表项 2

| 表头 1 | 表头 2 |
|-------|-------|
| 内容 1 | 内容 2 |

```javascript
// 代码块
console.log('Hello, World!');
```

> 引用文本

```

## 常见问题

### Q: 部署后看不到新文章？
A: 可能是缓存问题，尝试清除浏览器缓存或等待几分钟后再访问。

### Q: 如何修改博客标题和描述？
A: 修改 `_config.yml` 文件中的 `title`、`subtitle` 和 `description` 字段。

### Q: 如何添加新页面？
A: 执行 `hexo new page "页面名称"` 命令创建新页面。

### Q: 如何更换主题？
A: 
1. 在 [Hexo 主题库](https://hexo.io/themes/) 中选择一个主题
2. 克隆主题到 `themes/` 目录：
   ```bash
   git clone https://github.com/theme-author/theme-name.git themes/theme-name
   ```

1. 修改 `_config.yml` 文件中的 `theme` 字段：

   ```yaml
   theme: theme-name
   ```

### Q: 如何添加评论功能？

A: 可以集成 Disqus、Gitalk、Valine 等评论系统，具体配置参考对应文档。

### Q: 标题显示不完整，只显示下半边？

A: 这可能是因为标题向上偏移导致被裁切掉了。解决方案：

1. 打开 `themes/landscape/source/css/_partial/header.styl` 文件
2. 找到 `#header-title` 部分，修改 `margin-top` 值为正数，例如 `margin-top: 40px`
3. 重新构建项目：`npm run build`
4. 重新启动服务：`npm run server`

### Q: 端口 4000 被占用，无法启动服务？

A: 可以使用其他端口启动服务：

```bash
hexo server -p 4001  # 使用端口 4001
```

然后访问 <http://localhost:4001/>

### Q: 样式不生效，页面看起来很简陋？

A: 这可能是因为缺少 `hexo-renderer-stylus` 依赖，Stylus 文件未编译为 CSS 文件。解决方案：

```bash
# 安装依赖
npm install hexo-renderer-stylus --save

# 清理缓存并重新构建
npm run clean && npm run build

# 重新启动服务
npm run server
```

### Q: 修改了内容但浏览器中没有更新？

A: 可能是缓存问题。解决方案：

1. 尝试按 `Ctrl+F5` 强制刷新浏览器
2. 或清理 Hexo 缓存后重新构建：`npm run clean && npm run build`

## 七、分类管理

### 1. 在文章中添加分类

在文章的 Front Matter 中添加 `categories` 字段：

```yaml
title: 文章标题
date: 2026-02-21 12:00:00
categories:
- 技术  # 一级分类
- 前端  # 二级分类
```

### 2. 多级分类

支持最多三级分类：

```yaml
categories:
- 技术          # 一级分类
- 前端          # 二级分类
- JavaScript    # 三级分类
```

### 3. 查看分类页面

- **分类列表页**：访问 `http://localhost:4000/categories/`
- **单个分类页**：访问 `http://localhost:4000/categories/分类名称/`

### 4. 在导航栏添加分类链接

修改 `_config.yml` 文件：

```yaml
menu:
  首页: /
  归档: /archives
  分类: /categories  # 添加分类链接
  关于: /about
```

### 5. 分类别名

如果需要为分类设置别名（使 URL 更友好），在 `_config.yml` 中添加：

```yaml
category_map:
  技术: tech  # 将 "技术" 分类的 URL 设置为 /categories/tech/
  前端: frontend
```

### 6. 分类管理最佳实践

- **保持简洁**：分类名称尽量简短
- **层级清晰**：合理设置一级和二级分类
- **一致性**：使用统一的命名风格
- **与标签区分**：分类用于结构化组织，标签用于关键词标记

## 参考链接

- [Hexo 官方文档](https://hexo.io/docs/)
- [Markdown 语法指南](https://www.markdownguide.org/basic-syntax/)
- [GitHub Pages 文档](https://docs.github.com/cn/pages)
- [Node.js 官网](https://nodejs.org/)
- [Git 官网](https://git-scm.com/)

## 命令速查

| 命令 | 功能 |
|------|------|
| `npm run server` | 启动本地服务器 |
| `npm run build` | 构建静态文件 |
| `npm run deploy` | 部署到 GitHub Pages |
| `npm run clean` | 清理缓存文件 |
| `hexo new "标题"` | 创建新文章 |
| `hexo new page "标题"` | 创建新页面 |
| `hexo generate` | 生成静态文件（同 `npm run build`） |
| `hexo deploy` | 部署网站（同 `npm run deploy`） |
| `hexo server` | 启动本地服务器（同 `npm run server`） |
| `hexo clean` | 清理缓存文件（同 `npm run clean`） |
