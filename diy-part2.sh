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
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# 获取luci-app-adguardhome
git clone https://github.com/uamrws/luci-app-adguardhome package/luci-app-adguardhome

# 获取luci-app-smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns package/luci-app-smartdns

# 获取luci-app-dnsfilter
git clone https://github.com/garypang13/luci-app-dnsfilter package/luci-app-dnsfilter

# 获取hello world和依赖
git clone https://github.com/jerrykuku/lua-maxminddb package/helloworld/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr package/helloworld/luci-app-vssr

# 获取主题
git clone https://github.com/Kinodi/luci-theme-atmaterial package/luci-theme-atmaterial
git clone https://github.com/sirpdboy/luci-theme-opentopd package/luci-theme-opentopd
git clone -b 18.06 https://github.com/kiddin9/luci-theme-edge package/luci-theme-edge

# 获取关机应用
git clone https://github.com/esirplayground/luci-app-poweroff package/luci-app-poweroff

# 获取 openwrt-bypass
# git clone https://github.com/kiddin9/openwrt-bypass package/openwrt-bypass

# 获取 openclash
git clone https://github.com/vernesong/OpenClash package/luci-app-OpenClash

# 获取 netdata
git clone https://github.com/sirpdboy/luci-app-netdata package/luci-app-netdata
