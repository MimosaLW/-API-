# Google AI Studio Clone

一个基于React + Vite + Tailwind CSS的Google AI Studio克隆应用，使用Gemini API进行AI对话。

## 快速开始

### 前置要求
- Node.js 16+ ([下载](https://nodejs.org/))
- Google Gemini API密钥 ([获取免费密钥](https://aistudio.google.com/apikey))

### 安装与运行

**最简单的方式 - 直接运行BAT文件：**

双击运行 `run.bat` 文件，它会自动：
1. 检查Node.js环境
2. 安装必要的依赖
3. 启动开发服务器

**或者手动运行:**

```bash
# 安装依赖
npm install

# 启动开发服务器
npm run dev

# 构建生产版本
npm build
```

### 配置API密钥

1. 访问 [Google AI Studio](https://aistudio.google.com/apikey) 获取免费API密钥
2. 打开项目根目录下的 `.env.local` 文件
3. 替换 `VITE_API_KEY` 的值：
   ```
   VITE_API_KEY=your_actual_api_key_here
   ```

## 功能特性

✨ **核心功能：**
- 💬 多会话管理 - 创建、编辑、删除对话
- 🎨 深浅主题切换 - 支持亮色和暗色主题
- ⚙️ 模型参数调整：
  - Temperature（温度）- 控制创意程度
  - Max Output Tokens - 控制最大输出长度
  - Top K - 令牌采样参数
  - Top P - 核采样参数
- 🎯 系统预设词 - 自定义AI行为方式
- 📊 实时加载动画 - 美观的生成进度显示
- 🔄 指数退避重试 - 自动处理API请求失败

## 项目结构

```
AI/
├── src/
│   ├── App.jsx           # 主应用组件
│   ├── main.jsx          # React入口
│   └── index.css         # Tailwind样式
├── index.html            # HTML入口文件
├── package.json          # 项目依赖配置
├── vite.config.js        # Vite构建配置
├── tailwind.config.js    # Tailwind配置
├── postcss.config.js     # PostCSS配置
├── .env.local            # 环境变量（API密钥）
├── run.bat               # Windows快速启动脚本
└── README.md             # 本文件
```

## 技术栈

- **React 18** - UI框架
- **Vite** - 现代化构建工具
- **Tailwind CSS** - 实用优先的CSS框架
- **Lucide React** - 图标库
- **Google Gemini API** - AI模型接口

## 开发

### 热更新
开发模式下，修改代码会自动刷新浏览器，无需手动重启。

### 构建生产版本
```bash
npm run build
```

### 预览生产构建
```bash
npm run preview
```

## API费用说明

- Gemini 2.5 Flash 模型提供免费配额
- 详见 [Google AI Studio文档](https://ai.google.dev/)

## 故障排除

**问题：提示未找到Node.js**
- 解决：安装Node.js并重启终端

**问题：API密钥无效**
- 解决：检查 `.env.local` 文件中的密钥是否正确复制

**问题：端口5173已被占用**
- 解决：修改 `vite.config.js` 中的端口号，或关闭占用该端口的应用

## 许可证

MIT

## 作者

Created with ❤️ for AI enthusiasts
