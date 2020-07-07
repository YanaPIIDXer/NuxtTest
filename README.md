# プロジェクト概要
Vue.js + Nuxt.jsの実験用プロジェクト。 
プラクティスとして色々と作ってみる。 
ついでにGithubの運用についても色々研究。 

# 環境構築
1. リポジトリをClone
1. Docker、Docker-composeをインストール
1. docker-compose buildを実行
1. docker-compose upを実行（-dオプションをつけてバックグラウンドで動作させる事を推奨。）
1. アクセスして動作確認（localhostで動いている訳ではないので注意。接続するのはdockerが動いているバーチャルマシン。）

# Github運用
## リポジトリの扱い方
ブランチ構成は一般的なgit-flow。 
主なリポジトリは以下のもの。（ここに挙げたものは全て直接push不可。） 
**master** 
公開用（・・・を想定した）ブランチ。 
developからここに対してPullRequestを投げる。（動作確認用のステージングリポジトリは用意しない。） 
ここにソースコードがマージされた時、CircleCIでnpm run generateしてそのソースコードをproductionリポジトリに投げるようにする・・・予定。 
 
**develop** 
開発用ブランチ。 
作業用のfeatureブランチはここから分岐させ、作業完了時はここに対してPullRequestを投げる。 
 
**production** 
公開用ブランチ。 
Nuxtのソースコードそのものではなく、npm run generateして吐き出された静的ページのソースコードを配置する。 
また、Github Pagesはここを参照して静的ページを公開する。 
※後程作成予定。 
 
## PullRequestルール
PullRequestの運用については以下のルールを設ける。 
 
- 本文中に対応するIssue番号を「#xx」の形で記載しなければならない。
- 対応Issue番号の記載が無いPullRequestはマージ不可。
 
上記ルールを強制するシステムが無いので現在模索中。（詳細は#8 にて） 
 