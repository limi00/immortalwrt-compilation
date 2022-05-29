#!/bin/bash
cd /home/runner/immortalwrt

# Enter your commands here, e.g.

# 修改默认登陆IP地址
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate

# 设置主机名称
sed -i 's/ImmortalWrt/XiaomiR3G/g' package/base-files/files/bin/config_generate

# 删除原主题
rm -rf package/lean/luci-theme-argon

# 添加新的主题
git clone -b master https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon

# 更改默认主题为Argon
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 替换更新adguardhome
# rm -rf package/ctcgfw/luci-app-adguardhome/ && git clone https://github.com/limi00/luci-app-adguardhome.git package/ctcgfw/luci-app-adguardhome

# 取消bootstrap为默认主题
# sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap

# 删除默认密码
# sed -i "/CYXluq4wUazHjmCDBCqXF/d" package/lean/default-settings/files/zzz-default-settings

# Enter your commands here, e.g.
# echo "Start build!"
make defconfig
make download -j8 V=s
