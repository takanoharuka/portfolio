# README

## Application Name
  SHARES

  ![ProtectTheEarth](https://i.gyazo.com/127fae65d6514e5ba5bb6753c48b0624.jpg)

## Application Overview
  このアプリケーションは、地球環境問題についての記事を共有する事ができます。<br>
  ログインしたユーザーは記事を投稿する事ができ、記事を投稿したユーザーのみ編集・削除機能が利用できます。<br>
  また記事の詳細ページに遷移すると記事にコメントする事ができます。<br>
  検索欄でキーワード検索をするとキーワードに該当する記事の一覧が表示されます。<br>

## URL
  https://portfolio-27873.herokuapp.com/

## ID/PASS
* ID: haruka
* Pass: 1215

## Test Account
* mail address: sample2@sample.com
* password: sample2


## Development environment
Ruby/Ruby on Rails/JavaScript/MySQL/Github/Heroku/Visual Studio Code/AWS S3

## Application How To Use
・ WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。<br>
・ 接続先およびログイン情報については、上記の通りです。
1. テストアカウントでログイン
2. トップページからNEW POSTボタンを押下
3. 商品画像・タイトル・記事内容を入力します
4. 投稿した画像はトップページに一覧表示されます
5. トップページから画像をクリックすると詳細ページに遷移します



## Implementation function
・ ユーザーログイン/ログアウト機能<br>
・ 記事投稿機能 <br>
・ 記事削除機能/編集機能 <br>
・ コメント機能（非同期通信）/コメント削除機能 <br>
・ 記事検索機能 <br>

## Features to be implemented
・ タグ付機能
・ いいね機能
・ マイページ作成

##  Aimed problem solution
今現在世界的な問題となっている地球環境問題について何か考えるきっかけになればと思い<br>
記事共有アプリを開発しました。<br>
アプリの問題点としてheroku上で扱う画像ファイルはアプリが再起動する度に消えてしまう使用の為、画像を共有するアプリとして、使用上問題と考えました。そこでAWSのS3に画像を保存する使用に変更しました。<br>
これからの課題点としてユーザーが記事を共有しやすくする為、記事投稿の際のタグ付け機能やいいね機能などの機能を追加していきたいと考えています。




## userテーブル

|Column|Type|Option|
|------|----|------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|

- has_many: tweets
- has_many: comments

## tweetテーブル

|Column|Type|Option|
|------|----|------|
|title|string|null: false|
|image|string|null: false|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|

- belongs_to: user
- has_many: comments

## commentテーブル

|Column|Type|Option|
|------|----|------|
|comment|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|tweet_id|integer|null: false, foreign_key: true|

- belongs_to: user
- belongs_to: tweet
