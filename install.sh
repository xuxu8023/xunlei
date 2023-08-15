#!/usr/bin/env sh

set -eu

#latest=$(curl -fsSL https://api.github.com/repos/xuxu8023/xunlei/releases/latest | grep browser_download_url | grep $(uname -m) | head -n 1 | grep -Eo https.+.tar.gz)
latest=https://github.com/xuxu8023/xunlei/releases/download/v2.6.1/xunlei-v3112.linux.x86_64.tar.gz
echo "download: $latest"
curl -fsSL ${latest} | tar zx
./xunlei $@

if [ "$(pwd)" != "/var/packages/pan-xunlei-com" ]; then
    rm -f ./xunlei
fi
