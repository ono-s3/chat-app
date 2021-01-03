class CreateRoomUsers < ActiveRecord::Migration[6.0]
  # 中間テーブルuser = room
  def change
    create_table :room_users do |t|
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
