class AddPlaybackFunction < ActiveRecord::Migration
  def up
    create_table :playback do |t|
      t.string :user_id
      t.string :artist
      t.string :album
      t.string :title
      t.integer :year
      t.datetime :played_at
    end
  end

  def down
    drop_table :playback
  end
end
