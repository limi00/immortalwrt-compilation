#!/bin/bash

git clone -b openwrt-21.02 --single-branch https://github.com/immortalwrt/immortalwrt && cd immortalwrt
./scripts/feeds update -a && ./scripts/feeds install -a

# git clone "https://github.com/immortalwrt/immortalwrt.git" --branch "openwrt-23.05" --single-branch "immortalwrt"
# pushd "immortalwrt"; ./scripts/feeds update -a; ./scripts/feeds install -a; popd
