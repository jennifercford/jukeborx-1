class AddPlaybackFunction < ActiveRecord::Migration
  def up
    create_table :playback do |t|
      t.integer :user_id
      t.integer :song_id, null:false 
      # t.string :artist
      # t.string :album
      # t.string :title
      # t.integer :year
      #only really need the columns user_id,song_id, and datetime.
      t.datetime :played_at
    end
  end

  def down
    drop_table :playback
  end
end
