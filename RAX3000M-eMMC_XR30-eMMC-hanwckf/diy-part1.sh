#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

rm -rf $(find ./feeds/packages/ -type d -regex ".*\(golang\|chinadns-ng\|sing-box\|xray-core\|v2ray-core\|v2ray-plugin\|v2ray-geodata\).*")

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#git clone https://github.com/messense/aliyundrive-webdav package/messense
git clone https://github.com/destan19/OpenAppFilter package/OpenAppFilter
    
git clone --depth=1 --single-branch https://github.com/sbwml/packages_lang_golang.git feeds/packages/lang/golang

git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman
git clone https://github.com/sbwml/luci-app-alist package/luci-app-alist
git clone https://github.com/vernesong/OpenClash package/OpenClash
git clone https://github.com/xiaorouji/openwrt-passwall-packages package/openwrt-passwall-packages
git clone https://github.com/xiaorouji/openwrt-passwall package/openwrt-passwall
git clone https://github.com/chenmozhijin/luci-app-adguardhome package/luci-app-adguardhome
git clone https://github.com/sirpdboy/netspeedtest package/netspeedtest


