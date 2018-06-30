# docker-chrome-headless
chrome headless in docker with zh_CN support

## 使用
- devtools: `docker container run -d -p 9222:9222 tiancheng91/chrome-headless --remote-debugging-address=0.0.0.0 --remote-debugging-port=9222`

## 问题
puppeteer各个版本依赖最新版的chromium, alpine仓库里的chromium版本稍旧, 可能会无法正常使用.