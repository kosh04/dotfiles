# .convig/pip

https://pip.pypa.io/en/stable/

## Tips

freeze and install

```shell
pip freeze --user > requirements.txt
pip install --user -r requirements.txt
```

upgrade all packages

```shell
pip install --upgrade pip
pip list --outdated --format=freeze | cut -d= -f1 | xargs -n1 pip install -U
```

各パッケージのインストール場所に注意 (system global or `--user` local)

実際のところ、各プロジェクトごとに仮想環境(venv)を用意するほうが堅実なため
この requirements.txt はほとんど意味がない :p
