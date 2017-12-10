# 概要
自己管理用のアプリ

# 各環境
## 開発環境
### 技術内容

* Rails 5.14
* Ruby 2.4.1
* React.js

* Docker
* Docker-compose

### 起動コマンド
Dockerを使っているので、
Docker for MacやDocker Machineなどから、
Docker Composeコマンドで起動して下さい

docker-compose build
docker-compose up


## テスト環境
CircleCIで、docker-composeを起動

下記のテストを自動実行
* Rubocop
* Rspec

erdを自動生成し、artifactsに保存

## 本番環境
Herokuで運用
