#!/usr/bin/env sh

set -eu

latest=v2.6.1
#latest=$(curl -fsSL https://api.github.com/repos/cnk3x/xunlei/releases/latest | grep browser_download_url | grep $(uname -m) | head -n 1 | grep -Eo https.+.tar.gz)
latest=https://objects.githubusercontent.com/github-production-release-asset-2e65be/678431081/39707554-8113-4e89-8152-b1c5c3c965e9?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20230815%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230815T014137Z&X-Amz-Expires=300&X-Amz-Signature=976c785a4658f4d677373872c09dbb7d2407695c2aac9f58313823785238a585&X-Amz-SignedHeaders=host&actor_id=129353218&key_id=0&repo_id=678431081&response-content-disposition=attachment%3B%20filename%3D3.11.2.tar.gz&response-content-type=application%2Foctet-stream
echo "download: $latest"
curl -fsSL ${latest} | tar zx
./xunlei $@

if [ "$(pwd)" != "/var/packages/pan-xunlei-com" ]; then
    rm -f ./xunlei
fi
