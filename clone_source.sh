git clone "https://github.com/coolsnowwolf/lede.git" --branch "master" --single-branch "lede"
pushd "lede"
echo "src-git kaede https://github.com/AkinoKaede/openwrt-packages" >> "feeds.conf.default"
echo "src-git daed https://github.com/QiuSimons/luci-app-daed" >> "feeds.conf.default"
echo "src-git helloworld https://github.com/fw876/helloworld" >> "feeds.conf.default"
./scripts/feeds update -a; ./scripts/feeds install -a;
popd