class CreateSueyoshis < ActiveRecord::Migration[6.0]
  def change
    create_table :sueyoshis do |t|
      t.integer :s_point, null: false
      t.integer :s_rank, null: false
      t.integer :turn, null: false
      t.references :room, null: false, foreign_key: true
      t.timestamps
    end
  end
end
