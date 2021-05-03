class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.date :date
      t.integer :turn
      t.timestamps
    end
  end
end
