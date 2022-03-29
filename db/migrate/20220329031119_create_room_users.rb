class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t|
      t.references :user, null: false, foreignkey: true
      t.references :room, null: false, foreignkey: true
      t.timestamps
    end
  end
end
