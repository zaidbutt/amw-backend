class CreateReactions < ActiveRecord::Migration[8.0]
  def change
    create_table :reactions do |t|
      t.string :kind
      t.references :user, null: false, foreign_key: true
      t.references :moment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
