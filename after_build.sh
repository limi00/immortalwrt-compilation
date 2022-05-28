#!/bin/bash
cd /home/runner/immortalwrt

# Enter your commands here, e.g.

# Add a feed source
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default

# # Define My Package
# git clone https://github.com/immortalwrt/openwrt-passwall.git package/diy/luci-app-passwall
# git clone https://github.com/xiaorouji/openwrt-passwall.git package/diy/luci-app-passwall
# git clone https://github.com/tty228/luci-app-serverchan.git package/diy/luci-app-serverchan
# svn co https://github.com/limi00/sirpdboy-package/trunk/luci-app-ddnsto package/diy/luci-app-ddnsto
# svn co https://github.com/limi00/sirpdboy-package/trunk/luci-app-autotimeset package/diy/luci-app-autotimeset
# svn co https://github.com/limi00/sirpdboy-package/trunk/luci-app-control-weburl package/diy/luci-app-control-weburl
# svn co https://github.com/linkease/ddnsto-openwrt/trunk/ddnsto package/network/services/ddnsto
# svn co https://github.com/linkease/ddnsto-openwrt/trunk/luci-app-ddnsto package/ctcgfw/luci-app-ddnsto

# echo "Success!"
