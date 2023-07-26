# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| profile            | string | null: false |
|occupation          | text   | null: false |
| position           | text   | null: false |

### Association

- has_many :comments
- has_many :prototypes

## comments テーブル

| Column    | Type       | Options     |
| --------- | ---------- | ----------- |
| user      | references | null: false , foreign_key: true |
| prototype | references | null: false,foreign_key: true   |
| content   | text       | null: false                     |

s
### Association

- belongs_to :user
- belongs_to :prototype

## prototypes テーブル

| Column     | Type       | Options                        |
| -----------| ---------- | ------------------------------ |
| user       | references | null: false, foreign_key: true |
| title      | text       | null: false                    |
|catch_copy  | text       | null: false                    |
|concept     | text       | null: false                    |

### Association
has_many :comments
has_many :users
