# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :artist_users
- has_many :artists, through: artist_users
- has_many :messages

## artists テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :artist_users
- has_many :users, through: artist_users
- has_many :messages

## artist_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| artist | references | null: false, foreign_key: true |

### Association

- belongs_to :artist
- belongs_to :user

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| artist  | references | null: false, foreign_key: true |

### Association

- belongs_to :artist
- belongs_to :user