# TWY's Personal Website 🌟

欢迎来到 TWY 的个人网站！这是一个展示学习成果和生活记录的个人空间。

## 📖 网站结构

- **首页** (`index.html`) - 欢迎页面，提供导航入口
- **生活空间** (`main.html`) - 展示生活照片和回忆
- **学习空间** (`study.html`) - 展示学习成果、证书和文档

## 🎯 主要功能

### 学习空间
- 📜 展示各类荣誉证书（9张）
  - 数学竞赛获奖证书
  - 奖学金证书
  - 优秀学生/团员证书
  - 大创项目证书
- 📄 学习文档展示（4个）
  - 英语六级成绩单
  - 竞赛证书PDF
  - 大创项目结题报告

### 生活空间
- 📸 照片相册展示
- 🎨 精美的网格布局
- 🔍 点击放大查看

## 🛠️ 技术特点

- ✅ 纯静态网站（HTML + CSS + JavaScript）
- ✅ 响应式设计，支持手机/平板/电脑
- ✅ 图片懒加载，性能优化
- ✅ 现代化 UI 设计
- ✅ 无需后端服务器

## 📂 文件结构

```
Twy's_subweit/
├── index.html              # 首页
├── main.html               # 生活空间
├── study.html              # 学习空间
├── files/                  # 生活照片文件夹
│   └── *.jpg, *.pdf
└── 证书、论文/             # 证书和文档文件夹
    ├── *.jpg               # 证书图片
    ├── *.pdf               # PDF文档
    └── 大创/               # 大创项目文件
```

## 🚀 部署方式

### 方式1：Netlify（推荐）
1. 访问 [Netlify](https://www.netlify.com)
2. 注册并登录
3. 拖拽整个文件夹到页面上
4. 自动部署完成！

### 方式2：GitHub Pages
1. 创建 GitHub 仓库
2. 上传所有文件
3. 在仓库设置中启用 GitHub Pages
4. 访问：`https://您的用户名.github.io/仓库名/`

### 方式3：Vercel
1. 访问 [Vercel](https://vercel.com)
2. 导入项目
3. 自动部署

## 📝 如何添加内容

### 添加证书图片
编辑 `study.html`，找到 `photos` 数组（约310行）：

```javascript
const photos = [
    ['证书、论文/新证书.jpg', '证书标题', '证书描述'],
    // 继续添加...
];
```

### 添加学习文档
编辑 `study.html`，找到 `documents` 数组（约329行）：

```javascript
const documents = [
    ['证书、论文/新文档.pdf', '文档标题', '文档描述', '📄'],
    // 继续添加...
];
```

### 添加生活照片
编辑 `main.html`，找到 `photos` 数组，按相同格式添加。

## 🎨 自定义样式

所有样式都在各 HTML 文件的 `<style>` 标签中，可以自由修改：
- 颜色：搜索 `background:` 或 `color:`
- 大小：搜索 `font-size:` 或 `width:`
- 动画：搜索 `transition:` 或 `animation:`

## 📧 联系方式

如有问题或建议，欢迎联系！

---

⭐ **Made with ❤️ by TWY**


