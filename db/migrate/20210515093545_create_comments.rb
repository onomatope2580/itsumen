class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :s_comment
      t.string :t_comment
      t.string :h_comment
      t.string :y_comment
      t.references :room, foreign_key: true, null: false
      t.timestamps
    end
  end
end
