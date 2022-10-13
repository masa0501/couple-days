# アプリケーション名
Couple-Days
# アプリケーション概要
思い出の写真を保存したり、予定を確認してスケジュールを調整できる
# URL
https://couple-days.herokuapp.com/
# テスト用アカウント
・Basic認証パスワード :admin
・Basic認証ID :2222
・メールアドレス :test@mail
・パスワード :test01
# 利用方法
# アルバム投稿
1 ユーザーの新規登録を行う
2 ヘッダーの新規投稿から、アルバムの内容(タイトル・画像1~5枚)を入力して投稿する
3 一覧ページにアルバムが表示される
# カレンダーに予定を記入する
1 カレンダーのフォームから予定の内容(タイトル・詳細)を入力して投稿
2 カレンダー内に予定が表示される
# アプリケーションを作成した背景
パートナーとの思い出の写真と記念日や予定を一緒に管理できるアプリがあれば、過去の投稿を元に次のデートプランやプレゼントを考える材料になるのではと考えた為、このアプリを作成した。
# 洗い出した要件
https://docs.google.com/spreadsheets/d/1jVk97mWtZ0mwfNbQeMhUWZI-D6QP9RT4wizKJslQKqA/edit#gid=982722306
# 実装した機能
一覧ページには付き合った記念日とアルバムが新しい順に並ぶ
[![Image from Gyazo](https://i.gyazo.com/384261c988e4b149433aa77c8100704e.jpg)](https://gyazo.com/384261c988e4b149433aa77c8100704e)

画像をクリックして遷移した詳細ページでは投稿した複数の画像が表示される
[![Image from Gyazo](https://i.gyazo.com/ec1615c312097015fe8da4a17365ca2c.jpg)](https://gyazo.com/ec1615c312097015fe8da4a17365ca2c)

カレンダー機能に予定が記入できる
[![Image from Gyazo](https://i.gyazo.com/fe99cf3c383600d5d4be95d85dc7b2ea.png)](https://gyazo.com/fe99cf3c383600d5d4be95d85dc7b2ea)

# 実装予定の機能
ユーザーページから記念日を新たに追加できる機能を実装予定
# データーベース設計
[![Image from Gyazo](https://i.gyazo.com/2246b827f0201d8adf5b7fb43feaa0a9.png)](https://gyazo.com/2246b827f0201d8adf5b7fb43feaa0a9)
# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/0e6cbc954caae14ff90e5faedd98cae0.png)](https://gyazo.com/0e6cbc954caae14ff90e5faedd98cae0)
# 開発環境
・フロントエンド HTML, CSS, JavaScript
・バックエンド Ruby, Ruby on rails
・インフラ MySQL, AWS
・タスク管理 git, github
# ローカルでの動作方法
以下のコマンドを順に実行
% git clone https://github.com/masa0501/couple-days.git
% cd couple-days
% bundle install
% yarn install
# 工夫したポイント
アルバム一覧の左上に付き合った記念日を表示することでカップル向けアプリとしての印象を強めた