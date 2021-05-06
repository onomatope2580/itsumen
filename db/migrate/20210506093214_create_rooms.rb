class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.integer :number, null: false
      t.date :date, null: false
      t.timestamps
    end
  end
end
