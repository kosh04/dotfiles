# Chocolatey

- https://chocolatey.org/
- https://github.com/chocolatey/choco/wiki

## TIP:Export packages as XML

[packagesconfig]:https://github.com/chocolatey/choco/wiki/CommandsInstall#packagesconfig
[export-ps1]:https://gist.github.com/alimbada/449ddf65b4ef9752eff3

- [Packages.config 詳細][packagesconfig]
- [PowerShell でエクスポートする方法][export-ps1]

Chocolatey GUI > [export] as packages.config

then type `choco install packages.config`

TODO: インストール一覧の表示 (`choco list`) ではソフトウェアの個別設定を出力する方法が不明。
そのため、再インストール時に個別設定を反映することができない。

e.g. `cinst git --params="/GitAndUnixToolsOnPath /NoAutoCrlf"`
