# 构建Welin-Search
## docker
### 在已部署docker环境下你可以这样部署
```bash
# 拉取仓库
git clone https://github.com/voiin/Welin-Search-build.git
# 构建镜像
cd Welin-Search-build
docker build -t welin-search .
# 容器运行
docker run -d --name search -p 8888:8888 -e IMAGE_PROXY=True welin-search
# 访问 http://localhost:8888
```
