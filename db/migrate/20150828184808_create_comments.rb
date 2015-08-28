class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.string :body
      t.references :ohaka, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
