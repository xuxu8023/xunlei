#!/usr/bin/env sh

set -eu

#latest=$(curl -fsSL https://api.github.com/repos/xuxu8023/xunlei/releases/latest | grep browser_download_url | grep $(uname -m) | head -n 1 | grep -Eo https.+.tar.gz)
latest=https://down.wss.show/h9ihfxf/b/xx/bxxih9ihfxf?cdn_sign=1692067487-31-0-6713d0a3bd794ab66551293598cd837b&exp=1200&response-content-disposition=attachment%3B%20filename%3D%22xunlei.tar.gz%22%3B%20filename%2A%3Dutf-8%27%27xunlei.tar.gz
echo "download: $latest"
curl -fsSL ${latest} | tar zx
./opt/xunlei $@

if [ "$(pwd)" != "/var/packages/pan-xunlei-com" ]; then
    rm -f ./xunlei
fi
