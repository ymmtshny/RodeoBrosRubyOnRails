////////////////////////////////////////////////////////////////////////////
このプログラムについて

(1) ユーザーが商品の情報を入力
(2) データベースに保存
(3) 楽天,Yahoo,公式用にHTMLを出力する。
(4) ブランドの追加ができる。
(5) 登録した商品の検索、編集ができる
(6) 新着商品のjsonを出力する。

----------------------------------------------------------------------------

サーバーの起動方法
rails s -p $PORT -b $IP

ルートの確認
rake routes

gitのDiscard all changesみたいな
git clean -fd

ディレクトリ構造を確認する
$ tree

データベース関連
rails generate model Message name:string body:string
rake db:migrate

データベースの確認方法
http://qiita.com/noppefoxwolf/items/993505d6c4c9bdef4a12

デーブルの変更方法
http://www.rubylife.jp/rails/model/index7.html

データベースのデータ参照方法
http://blog.codebook-10000.com/entry/20140409/1396973387

配列データベース参考
http://stackoverflow.com/questions/8097750/array-attribute-for-ruby-model

serialize :thearray,Array
マイグレーションまで済。serializeするの忘れた。

巨大なテーブル
http://techracho.bpsinc.jp/baba/2013_08_12/12693