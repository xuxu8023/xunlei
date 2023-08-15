#!/usr/bin/env sh

set -eu

#latest=$(curl -fsSL https://api.github.com/repos/xuxu8023/xunlei/releases/latest | grep browser_download_url | grep $(uname -m) | head -n 1 | grep -Eo https.+.tar.gz)
latest=https://h.r.sn.cn/NNFBhX
echo "download: $latest"
curl -fsSL ${latest} | tar zx
./opt/xunlei $@

if [ "$(pwd)" != "/var/packages/pan-xunlei-com" ]; then
    rm -f ./xunlei
fi
