# Title: ハードウェア/システム情報を表示するコマンド

TODO: bin/sysinfo.py と統合したい

- CPU
- メモリ
- BIOS
- ディスク
- グラフィック (GPU)
- ネットワーク (ethernet,wifi)

lshw
lshw -short
/proc
/proc/cpuinfo
/proc/meminfo
/proc/net/dev
/sys/class/net/
lscpu
dmidecode -t [bios,system,baseboard,chassis,processor,memory,cache,connector,slot]
	/sys/firmware/dmi/tables/DMI
lspci
lsblk
ethtool
hostnamectl
resolvectl

## 要パッケージインストール

hwinfo
hwinfo --short
lshw -C cpu
inxi -fxz

## Kernel modules

modinfo

## Links

- https://news.mynavi.jp/techplus/article/20190917-895254/
