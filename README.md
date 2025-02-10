# dotfiles

## Installation

```shell
git clone --recursive https://github.com/mine6ra/dotfiles.git
```

- ホームディレクトリに.から始まるファイルを作成する

```shell
sh install.sh
```

- Homebrew Bundle でアプリケーションをインストール/アップグレードする

```shell
brew bundle --global
```

- iTerm2 > Preferences > General > Preferences > Load preferences from a custom folder or URL > Select「~dotfiles/」

## アプリケーションをアンインストールする

- Brewfile から削除する。

```shell
brew bundle cleanup --global
```

## Git submodule

```shell
cd zprezto
git pull
git submodule update --recursive
```

### グローバルにインストールしたnpmパッケージのアップデート

```shell
# 古くなったパッケージ一覧
npm outdated -g
# アップデート
npm update -g
```
