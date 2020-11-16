class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :artist_name,               null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
