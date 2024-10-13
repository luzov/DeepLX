# README

基于 [OwO-Network/DeepLX: Powerful Free DeepL API, No Token Required (github.com)](https://github.com/OwO-Network/DeepLX)修改。

## 使用Docker部署

1. 安装Docker和Docker Compose

2. 下载docker-compose.yml文件:
   ```
   wget https://raw.githubusercontent.com/YuCN0010/DeepLX/main/compose.yaml
   ```

3. 运行以下命令启动服务:
   ```
   docker-compose up -d
   ```

4. 服务将在 http://localhost:11888 上运行

如果需要设置TOKEN或DL_SESSION,请取消注释docker-compose.yml文件中的相应环境变量并设置值。
