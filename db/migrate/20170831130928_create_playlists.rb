class CreatePlaylists < ActiveRecord::Migration[5.1]
  def change
    create_table :playlists do |t|
      t.string :name
      t.references :song, index: true, foreign_key: true
      t.timestamps
    end
  end
end
