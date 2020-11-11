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

* テーブル設計
## adminsテーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| last_name          | string  | null: false |
| first_name         | string  | null: false |
| last_name_kana     | string  | null: false |
| first_name_kana    | string  | null: false |
| phone_number       | string  | null: false |
| email              | string  | null: false |
| encrypted_password | string  | null: false |

### Association

- has_many :studios


## Studios テーブル

| Column               | Type       | Options           |
| -------------------- | ---------- | ----------------- |
| name                 | string     | null: false       |
| price                | integer    | null: false       |
| admin                | integer    | null: false       |

### Association

- belongs_to :admin
- has_many   :reserves


## usersテーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| last_name          | string  | null: false |
| first_name         | string  | null: false |
| last_name_kana     | string  | null: false |
| first_name_kana    | string  | null: false |
| phone_number       | string  | null: false |
| email              | string  | null: false |
| encrypted_password | string  | null: false |

### Association

- has_many :reserve
- has_many :reservations


## reserves テーブル

| Column      | Type        | Options           |
| ----------- | ----------- | ----------------- |
| user        | references  | foreign_key: true |
| studio      | references  | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :studio
- has_one    :reservation


## reservationsテーブル

| Column                         | Type       | Options           |
| ------------------------------ | ---------- | ----------------- |
| date                           | string     | null: false       |
| time_from_id                   | text       | null: false       |
| time_to_id                     | integer    | null: false       |
| note                           | integer    | null: false       |
| payment_method_id              | integer    | null: false       |
| user                           | references | foreign_key: true |
| reserve                        | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :reserve