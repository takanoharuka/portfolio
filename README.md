# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

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