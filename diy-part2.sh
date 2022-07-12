#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.1.253/g' package/base-files/files/bin/config_generate

# luci-app-passwall
git clone -b luci --depth 1 https://github.com/xiaorouji/openwrt-passwall.git package/passwall/luci-app-passwall/
git clone -b packages --depth 1 https://github.com/xiaorouji/openwrt-passwall.git package/passwall/

# luci-app-ssrp
git clone -b master --depth 1 https://github.com/fw876/helloworld.git package/helloworld/

# luci-theme-argon
rm -rf feeds/luci/themes/luci-theme-argon/
git clone -b 18.06 --depth 1 https://github.com/jerrykuku/luci-theme-argon.git feeds/luci/themes/luci-theme-argon/

# luci-app-vssr
#git clone -b master --depth 1 https://github.com/jerrykuku/lua-maxminddb.git package/lean/lua-maxminddb/
#git clone -b master --depth 1 https://github.com/jerrykuku/luci-app-vssr.git package/lean/luci-app-vssr/
