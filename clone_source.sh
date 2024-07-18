git clone "https://github.com/coolsnowwolf/lede.git" --branch "master" --single-branch "lede"
pushd "lede"
echo "src-git kaede https://github.com/AkinoKaede/openwrt-packages" >> "feeds.conf.default"
echo "src-git daed https://github.com/QiuSimons/luci-app-daed" >> "feeds.conf.default"
echo "src-git helloworld https://github.com/fw876/helloworld" >> "feeds.conf.default"
./scripts/feeds update -a; ./scripts/feeds install -a;
echo '

config KERNEL_XDP_SOCKETS
	bool "XDP sockets support"
	default y if KERNEL_DEBUG_INFO_BTF
	help
	  XDP sockets allows a channel between XDP programs and
	  userspace applications.
'>> "config/Config-kernel.in"
popd