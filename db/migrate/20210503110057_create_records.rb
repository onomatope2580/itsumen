class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.integer :point
      t.integer :rank
      t.date :date
      t.integer :turn
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
