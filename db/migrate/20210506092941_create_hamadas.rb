class CreateHamadas < ActiveRecord::Migration[6.0]
  def change
    create_table :hamadas do |t|
      t.integer :h_point, null: false
      t.integer :h_rank, null: false
      t.integer :turn, null: false
      t.references :room, null: false, foreign_key: true
      t.timestamps
    end
  end
end
