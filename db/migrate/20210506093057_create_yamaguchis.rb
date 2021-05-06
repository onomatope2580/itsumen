class CreateYamaguchis < ActiveRecord::Migration[6.0]
  def change
    create_table :yamaguchis do |t|
      t.integer :y_point, null: false
      t.integer :y_rank, null: false
      t.integer :turn, null: false
      t.references :room, null: false, foreign_key: true
      t.timestamps
    end
  end
end
