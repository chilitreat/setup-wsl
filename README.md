# setup-wsl

自分がよく使うツール・ライブラリが全部入りの開発環境をプロビジョニングします

- AWS CLI
- Terraform
- Docker CE

## Requirements

- WSL2
- ユーザー情報設定済みのUbuntu 
    - 動作確認済みディストリビューションは[動作確認済みディストリビューション](#動作確認済みディストリビューション)を参照

参考: https://docs.microsoft.com/ja-jp/windows/wsl/install

## 使い方

```
git clone 

cd setup-wsl

# ansibleのセットアップなどの下準備
make init

# aws-cli,terraformなどのインストール
make play
```

## 他のライブラリをインストールしたい場合

`roles/` 配下に新たにディレクトリを切って タスクを作成してください.  

`wsl.yaml` にroleを追加し、`make play` コマンドを実行してください.

## Makefile

利用者が実行するコマンドはすべて`make`コマンドでラップしてください.

現在定義されてあるコマンドは以下の4個.

1. `make init`    ansibleのインストール
1. `make syntax`  ansibleの構文チェック
1. `make dry-run` ドライランによる変更確認　
1. `make play`    プロビジョニング実行

## 動作確認済みディストリビューション

- [x] Ubuntu          Ubuntu
- [ ] Ubuntu-16.04    Ubuntu 16.04 LTS
- [ ] Ubuntu-18.04    Ubuntu 18.04 LTS
- [ ] Ubuntu-20.04    Ubuntu 20.04 LTS

気が向いたらやる

- Debian          Debian GNU/Linux
- kali-linux      Kali Linux Rolling
- openSUSE-42     openSUSE Leap 42
- SLES-12         SUSE Linux Enterprise Server v12