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

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false, foreign_key: true|
|password|string|null: false, foreign_key: true|
|username|string|null: false, foreign_key: true|
### Association
- has_many :messages
- has_many :groups
- has_many  :through:  :groups_users

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|text||
|message|text|null: false|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :users
- belongs_to :groups
- has_many  :through:  :groups_users

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|text|null: null: false, foreign_key: true|
### Association
- has_many  :messages


## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user