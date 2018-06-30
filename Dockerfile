FROM alpine:edge

MAINTAINER tiancheng91 <tiancheng91@gmail.com>

# 美找到apt 只安装必选依赖的方法, 这边安装完后卸载掉类推荐安装上去的应用
RUN apk add --no-cache chromium font-noto

ENTRYPOINT ["chromium-browser", \
    "--headless", \
    "--disable-client-side-phishing-detection", \
    "--disable-default-apps", \
    "--disable-dev-shm-usage", \
    "--disable-extensions", \
    "--disable-hang-monitor", \
    "--disable-popup-blocking", \
    "--disable-prompt-on-repost", \
    "--disable-sync", \
    "--disable-translate", \
    "--metrics-recording-only", \
    "--no-first-run", \
    "--no-sandbox", \
    "--safebrowsing-disable-auto-update"]