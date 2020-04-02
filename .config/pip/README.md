# .config/pip

https://pip.pypa.io/en/stable/

## Install

パッケージ管理システムからインストールする (Debian)

```shell
apt install python3-pip
```

あるいは

```shell
wget https://bootstrap.pypa.io/get-pip.py && python get-pip.py
```

*注意*: 前者の場合は、アップグレード `pip install -U pip` を行うと
システムが提供している pip コマンドと競合を起こす可能性がある。

## Tips

freeze and install

```shell
pip freeze --user | tee requirements.txt
pip install --user -r requirements.txt
```

upgrade all packages

```shell
pip install --upgrade pip
pip list --outdated --format=freeze | cut -d= -f1 | xargs -n1 pip install -U
```

各パッケージのインストール場所に注意 (system global or `--user` local)
アップグレードする際も local → global の順で更新したほうが良さげ

実際のところ、各プロジェクトごとに仮想環境(venv)を用意するほうが堅実なため
この requirements.txt はほとんど意味がない :p
