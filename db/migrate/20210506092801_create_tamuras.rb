class CreateTamuras < ActiveRecord::Migration[6.0]
  def change
    create_table :tamuras do |t|
      t.integer :t_point, null: false
      t.integer :t_rank, null: false
      t.integer :turn, null: false
      t.references :room, null: false, foreign_key: true
      t.timestamps
    end
  end
end
