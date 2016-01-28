class CreateEnrolls < ActiveRecord::Migration
  def change
    create_table :enrolls do |t|
      t.integer :playlist_id
      t.integer :song_id

      t.timestamps null: false
    end
  end
end
