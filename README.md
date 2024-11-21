# README

基于 [OwO-Network/DeepLX: Powerful Free DeepL API, No Token Required (github.com)](https://github.com/OwO-Network/DeepLX)修改。

## 使用Docker一键部署

1. 安装Docker

2. 运行以下命令启动服务:
   ```
   docker run -d --name deeplx -p 11888:11888 yucn/deeplx:latest
   ```

3. 服务将在 http://localhost:11888 上运行

如果需要设置DL_SESSION，可以在运行命令时添加环境变量，例如：
   ```
   docker run -d --name deeplx -p 11888:11888 -e DL_SESSION=<your_session> yucn/deeplx:latest
   ```
deeplx pro2api：
>http(s)://<your_domian>/<dl_session>/v1/translate

这里提供下我自己搭的服务，同时支持原项目支持的 /translate free2api 和 /v1/translate pro2api 接口，已配置dl_session，可直接调用。

ip接口（国内用户推荐使用）

>http://117.72.83.180:11888/translate
>http://117.72.83.180:11888/v1/translate
>http://117.72.83.180:11888/d45074b4-5bb0-4756-9105-e05082b05c57/v1/translate

如果发现dl_session不可用，直接用第三个url替换dl_session即可。

Hoppscotch 调试，查看返回字段中 method 为 Pro 即为 Pro2api：

[![Run in Hoppscotch](https://hopp.sh/badge.svg)](https://hopp.sh/r/loZVCzrrpWxC)

```json
{
  "alternatives": null,
  "code": 200,
  "data": "Hello, world. What a beautiful day.",
  "id": 8339335001,
  "method": "Pro",
  "source_lang": "AUTO",
  "target_lang": "EN"
}
```
