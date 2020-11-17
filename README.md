#　アプリケーション概要

・名前<br>
Artist Terminal<br>
https://original-30431.herokuapp.com/

・アプリケーション概要<br>
音楽を聴くユーザーがお互いのおすすめのアーティストや曲をチャットを通じて共有できる場所<br>
新人アーティストが自分等の音源等をあげる場所<br>

・制作目的
音楽をアクティブに聴くユーザー層に向けて、コミュニケーションを通じてその情報を共有できる場を作る<br>
また、音楽活動をしているアーティストが音源を投稿や販売できるような場所を作り、コミュニケーションを取る<br>
ユーザーにプロモーションを行える場所を提供する<br>

・追加予定の機能<br>
イイネなどを実装して、どのアーティストがどれくらい人気なのかをわかるようなランキング形式<br>
そのアーティストグッズの売買機能の実装及びコメント機能<br>
また、アーティストも登録できるようにし、自分達のオリジナル音源を発売できるようにする<br>
SNS連携<br>


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