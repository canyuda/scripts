[TOC]

## Docker 命令

### Redis 相关
```
docker run -p 6379:6379 -v $PWD/data:/data -d redis redis-server --appendonly yes
```