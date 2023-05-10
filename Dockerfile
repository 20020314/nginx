# 基于官方的 nginx 镜像
FROM nginx

# 将工作目录设置为 /usr/local/Serverstatus/web
WORKDIR /usr/local/Serverstatus/web

# 将 Nginx 默认配置文件替换为自定义配置文件
COPY nginx.conf /etc/nginx/nginx.conf

# 将端口映射到主机
EXPOSE 80

# 启动 Nginx 服务器
CMD ["nginx", "-g", "daemon off;"]
