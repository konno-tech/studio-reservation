# README

## アプリケーション名
Studio-Reservation
![top-page-1](https://user-images.githubusercontent.com/72255154/100216169-4fa6f700-2f55-11eb-968f-b9557452b75e.jpg)
![top-page-2](https://user-images.githubusercontent.com/72255154/100216411-985eb000-2f55-11eb-9327-337c58c51ac5.jpg)

## アプリケーション概要
音楽スタジオの予約アプリケーション。管理者（admin）はスタジオの追加・編集・削除をすることができ、ユーザー（user）はスタジオの予約、詳細情報の参照をすることができる。

## URL
https://studio-reservation-tk.herokuapp.com/

## テスト用アカウント
* ``管理者(admin)アカウント``
   * email:sample@sample.com
   * password:1qaz1qaz
* ``ユーザー（user）アカウント``
   * email:sam2@sample.com
   * password:1qaz1qaz 

## 利用方法
* ***共通事項***
   1. admin、userいずれの機能を利用する際も、当アプリはBasic認証を導入しているため、ログイン後にポップアップが表示された場合は以下の内容を入力することで利用することができる。
   - 
* ***管理者（admin）の場合***
   1. [管理者ログインページ](https://studio-reservation-tk.herokuapp.com/admins/sign_in)へ遷移する。
   2. テスト用アカウント：``管理者（admin）アカウント``にてログインする。
   3. ヘッダーの「``スタジオ追加``」を押下してスタジオを追加することができる。
   4. トップページ下部のスタジオ一覧より、「``編集``」「``削除``」を押下して編集・削除をすることができる。
   5. トップページ中央のカレンダーにて、予約状況を確認することができる。
* ***ユーザー（user）の場合***
   1. [ユーザーログインページ](https://studio-reservation-tk.herokuapp.com/users/sign_in)へ遷移する。
   2. テスト用アカウント：``ユーザー（user）アカウント``にてログインする。
   3. トップページ下部のスタジオ一覧より、「``スタジオ予約はこちら``」を押下してスタジオ予約をすることができる。
   4. トップページ中央のカレンダーにて、予約状況を確認することができる。

## 目指した課題解決
【案件背景】
音楽スタジオ「KONーSTUDIO」は現在電話もしくは店頭でのみ音楽スタジオの予約を承っており、決済は当日店頭での支払いのみとなっている。横浜エリアでの出店のため立地もよく多くの利用客を獲得することができたが、利用客の増加により以下の問題が発生している。

* 時間を問わず電話予約が頻繁に発生し、従業員によるスタジオ清掃や設備調整などをその都度作業を止める必要がある。
* 電話予約とスタジオ利用終了後の会計時間が重なった場合、利用者もスムーズに会計を終えることができない場合がある。
* 決済方法が店頭支払いのみであるため必ず会計処理をしなければならない。

``上記の問題を解決するため、WEB上での予約及びクレジットカードによる事前決済を行うことができる機能を開発し、時間的・労働的負担を軽減する。``


## 洗い出した要件

1. ``ユーザー要件``
    * 予約機能
        * 使用するスタジオを選択することができる。
        * 予約日を指定することができる。
        * 予約開始時間を指定することができる。
        * 予約終了時間を指定することができる。
        * 利用人数を登録することができる。
        * 店舗への連絡事項を登録することができる。
        * 当日店頭支払い（現金もしくはクレジットカード）かクレジットカードによる事前決済を選択することができる。
        * クレジットカード決済を行うことができる。
        * 予約済みのスタジオは選択できない。
    * 予約一覧表示機能
        * トップページにて予約状況を確認することができる。
    * 予約詳細表示機能
        * 予約時に入力した内容を確認することができる。

2. ``管理者要件``
    * 予約一覧表示機能
        * トップページにて予約状況を確認することができる。
    * 予約詳細表示機能
        * トップページにて予約状況を確認することができる。
        * ユーザー権限と異なり、予約者の電話番号も確認することができる。
    * スタジオ追加機能
        * 設備の増設があった際にスタジオを追加することができる。
    * スタジオ編集機能
        * スタジオ名、1時間あたりの価格を修正することができる。
    * スタジオ削除機能
        * スタジオの削除をすることができる。
    * 管理者権限機能
        * 管理者としてログインすることができる。
    * ユーザー権限機能
        * ユーザーとしてログインすることができる。
        
## 実装した機能についてのGIFと説明
1. スタジオ予約機能
![reserve](https://user-images.githubusercontent.com/72255154/100207021-701d8400-2f4a-11eb-9b29-8fb60fdfaf7b.gif)
2. 予約一覧表示機能
![reserve-list](https://user-images.githubusercontent.com/72255154/100207136-92170680-2f4a-11eb-8b31-9b801b2bdb6a.gif)
3. 予約詳細表示機能
![reserve-show](https://user-images.githubusercontent.com/72255154/100207186-a824c700-2f4a-11eb-8f2a-2afe7e0c3a88.gif)
4. スタジオ追加機能
![studio-add](https://user-images.githubusercontent.com/72255154/100207254-bb379700-2f4a-11eb-8462-74f45cbc9d29.gif)
5. スタジオ編集機能
![studio-edit](https://user-images.githubusercontent.com/72255154/100207287-c5f22c00-2f4a-11eb-8461-843ac142331b.gif)
6. スタジオ削除機能
![studio-delete](https://user-images.githubusercontent.com/72255154/100207342-d60a0b80-2f4a-11eb-8911-0251a31a8a08.gif)
7. 管理者ログイン機能
![signin-admin](https://user-images.githubusercontent.com/72255154/100210315-351d4f80-2f4e-11eb-9213-aa7fd3306d0f.gif)
8. ユーザーログイン機能
![signin-user](https://user-images.githubusercontent.com/72255154/100210359-41091180-2f4e-11eb-9db6-64a94562cd0b.gif)

## 実装予定の機能
* ユーザーによる予約編集機能
* ユーザーによる予約のキャンセル機能
* ユーザーのマイページ機能
    * 該当ユーザーに紐づくアカウント情報の編集機能
    * 該当ユーザーに紐づく過去の予約情報の表示機能
* 予約一覧表示のスタジオ毎の表示機能
* レスポンシブデザインへの対応

## テーブル設計
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
| admin                | references | foreign_key: true |

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
| date                           | date       | null: false       |
| time_from_id                   | integer    | null: false       |
| time_to_id                     | integer    | null: false       |
| number_of_users_id             | integer    | null: false       |
| note                           | text       | null: false       |
| payment_method_id              | integer    | null: false       |
| user                           | references | foreign_key: true |
| reserve                        | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :reserve

## ローカルでの動作方法
ターミナル（コマンドプロンプト）にて、以下のコマンドを実施する。

```rails:ターミナル
% git clone https://github.com/konno-tech/studio-reservation.git
% cd studio-reservation
% bundle install
% yarn install
% rails db:create
% rails db:migrate
% rails s
```

[ブラウザ](http://localhost:3000/)にて動作を確認する。

## 開発環境
``各種バージョン``

* Ruby 2.6.5p114
* Rails 6.0.3.4
* RubyGems 3.0.3
* MySQL 5.6.47
* heroku/7.47.3 darwin-x64 node-v12.16.2
* git version 2.24.3 (Apple Git-128)

``使用Gem``

* factory-bot([GitHub](https://github.com/thoughtbot/factory_bot))
* faker([GitHub](https://github.com/faker-ruby/faker))
* rubocop([GitHub](https://github.com/rubocop-hq/rubocop))
* rspec-rails([GitHub](https://github.com/rspec/rspec-rails))
* pry-rails([GitHub](https://github.com/rweng/pry-rails))
* devise（[GitHub](https://github.com/heartcombo/devise)）
* active_hash([GitHub](https://github.com/zilkey/active_hash))
* payjp([GitHub](https://github.com/payjp/payjp-ruby))
* simple-calendar（[GitHub](https://github.com/excid3/simple_calendar)）
* rails-i18n([GitHub](https://github.com/svenfuchs/rails-i18n))