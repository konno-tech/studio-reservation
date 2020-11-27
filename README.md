# README

## アプリケーション名
Studio-Reservation
![top-1](https://user-images.githubusercontent.com/72255154/100401212-293fa380-309c-11eb-9e98-505a3a0577e3.jpg)
![top-2](https://user-images.githubusercontent.com/72255154/100401253-58561500-309c-11eb-9464-0e241dcd5102.jpg)
![top-3](https://user-images.githubusercontent.com/72255154/100401268-66a43100-309c-11eb-8eec-4e65fc12ecee.jpg)

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
   - ユーザー名：admin
   - パスワード：2222
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
   5. マイページにて、自身が過去に予約した履歴を確認することができる。

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
    * 予約履歴確認（ユーザーマイページ）機能
        * マイページにて、自身が過去に予約した履歴を確認することができる。

2. ``管理者要件``
    * 管理者権限機能
        * 管理者のアカウント登録を行うことができる。
        * 管理者としてログインすることができる。
        * ログアウトすることができる。
    * スタジオ追加機能
        * 設備の増設があった際にスタジオを追加することができる。
    * スタジオ編集機能
        * スタジオ名、1時間あたりの価格を修正することができる。
    * スタジオ削除機能
        * スタジオの削除をすることができる。
    * ユーザー権限機能
        * ユーザーのアカウント登録を行うことができる。
        * ユーザーとしてログインすることができる。
        * ログアウトすることができる。
    * 予約一覧表示機能
        * トップページにて予約状況を確認することができる。
    * 予約詳細表示機能
        * トップページにて予約状況を確認することができる。
        * ユーザー権限と異なり、予約者の電話番号も確認することができる。
        
## 実装した機能についてのGIFと説明
1. 管理者アカウント登録機能
![admin-regist](https://user-images.githubusercontent.com/72255154/100402089-ba177e80-309e-11eb-9093-38ae7d23616d.gif)
2. 管理者ログイン機能
![admin-sign-in](https://user-images.githubusercontent.com/72255154/100402108-c8659a80-309e-11eb-960c-ea6256d97189.gif)
3. 管理者ログアウト機能
![admin-sign-out](https://user-images.githubusercontent.com/72255154/100402126-d5828980-309e-11eb-9704-9b0579109ebb.gif)
4. スタジオ追加機能
![studio-add](https://user-images.githubusercontent.com/72255154/100402458-a6204c80-309f-11eb-84b0-4d0c470b3f73.gif)
5. スタジオ編集機能
![studio-edit](https://user-images.githubusercontent.com/72255154/100402478-b20c0e80-309f-11eb-941f-0f6f96ec8d3f.gif)
6. スタジオ削除機能
![studio-delete](https://user-images.githubusercontent.com/72255154/100402490-bdf7d080-309f-11eb-8a6e-c1a108b51290.gif)
7. ユーザーアカウント登録機能
![user-regist](https://user-images.githubusercontent.com/72255154/100402825-99e8bf00-30a0-11eb-8edd-27c43811e28b.gif)
8. ユーザーログイン機能
![user-sign-in](https://user-images.githubusercontent.com/72255154/100402846-a53bea80-30a0-11eb-8f0f-ad3b957940d4.gif)
9. ユーザーログアウト機能
![user-sign-out](https://user-images.githubusercontent.com/72255154/100402864-b1c04300-30a0-11eb-90f3-e9172767f9c2.gif)
10. 予約機能
![reserve](https://user-images.githubusercontent.com/72255154/100404435-b71f8c80-30a4-11eb-9286-3b2c90195662.gif)
11. 予約一覧表示機能
![reserve-list](https://user-images.githubusercontent.com/72255154/100404455-c3a3e500-30a4-11eb-9786-c3da6bc8ab55.gif)
12. 予約詳細表示機能
![reserve-show](https://user-images.githubusercontent.com/72255154/100404474-cef71080-30a4-11eb-9ec8-3efc8f52b2cb.gif)
13. 予約履歴確認機能
![reserve-log](https://user-images.githubusercontent.com/72255154/100404500-de765980-30a4-11eb-8e10-235cc4c6978c.gif)


## 実装予定の機能
* ユーザーによる予約編集機能
* ユーザーによる予約のキャンセル機能
* ユーザーのマイページ機能
    * 該当ユーザーに紐づくアカウント情報の編集機能
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