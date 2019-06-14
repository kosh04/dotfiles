# Chocolatey

- https://chocolatey.org/
- https://github.com/chocolatey/choco/wiki

## TIP:Export packages as XML

https://github.com/chocolatey/choco/wiki/CommandsInstall#packagesconfig

Chocolatey GUI > [export] as packages.config

then type `choco install package.config`

TODO: インストール一覧の表示 (`clist`) ではソフトウェアの個別設定を出力する方法が不明。
そのため、再インストール時に個別設定を反映することができない。

e.g. `cinst git --params="/GitAndUnixToolsOnPath /NoAutoCrlf"`
