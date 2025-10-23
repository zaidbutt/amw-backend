class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.references :moment, null: false, foreign_key: true
      t.integer :parent_id

      t.timestamps
    end
  end
end
