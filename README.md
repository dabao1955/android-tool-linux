# flash-tool-linux
给各位linux机油写的刷机工具箱
# 安装
```bash
sudo apt update
sudo apt install aria2 -y
aria2c https://raw.githubusercontent.com/dabao1955/flash-tool-linux/eula/setup.sh && bash setup.sh
```
# 功能
- [x] fastboot线刷
- [x] adb刷入，提取，备份字库
- [x] adb sideload
- [ ] 支持多linux发行版(~~暂时只支持debian极其衍生linux发行版，可能以后也只支持这一种~~)
- [x] system.new.dat(.br)转换system.img
- [ ] super.img解包(以后支持)
# 目前状态
- [x] setup.sh
- [x] 主菜单
- [ ] fastboot刷入
- [x] adb 刷入(~~刷入boot还没完成~~)
- [x] adb 提取
- [ ] 字库备份
- [x] adb重启菜单
- [x] fadtboot重启菜单
- [x] system转换
- [ ] boot解包，打包
- [x] 反馈页面
- [ ] super.img解包
