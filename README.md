#　アプリケーション概要
・名前
Artist Terminal

・アプリケーション概要
音楽を聴くユーザーがお互いのおすすめのアーティストや曲をチャットを通じて共有できる場所
また、新人アーティストが自分等のプロモーション活動もできる場所

・追加予定の機能
イイネなどを実装して、どのアーティストがどれくらい人気なのかをわかるようなランキング形式
そのアーティストグッズの売買機能の実装及びコメント機能
また、アーティストも登録できるようにし、自分達のオリジナル音源を発売できるようにする
SNS連携


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
| artist_name   | string | null: false |

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