# 使用官方 Node.js 镜像作为基础镜像
FROM node:16-alpine

# 设置工作目录
WORKDIR /app

# 将 package.json 和 package-lock.json 复制到容器中
COPY package*.json ./

# 安装项目依赖
RUN npm install

# 复制项目的所有文件到容器中
COPY . .

# 暴露应用的端口
EXPOSE 3000

# 启动 Node.js 应用
CMD ["node", "index.js"]
