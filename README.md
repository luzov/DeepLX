# README

基于 [OwO-Network/DeepLX: Powerful Free DeepL API, No Token Required (github.com)](https://github.com/OwO-Network/DeepLX)修改。

## 使用Docker一键部署

1. 安装Docker

2. 运行以下命令启动服务:
   ```
   docker run -d --name deeplx -p 11888:11888 yucn/deeplx:latest
   ```

3. 服务将在 http://localhost:11888 上运行

如果需要设置TOKEN或DL_SESSION，可以在运行命令时添加环境变量，例如：
   ```
   docker run -d --name deeplx -p 11888:11888 -e TOKEN=your_token -e DL_SESSION=your_session yucn/deeplx:latest
   ```
