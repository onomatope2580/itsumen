class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.integer :point
      t.integer :rank
      t.references :user
      t.references :game
      t.timestamps
    end
  end
end
