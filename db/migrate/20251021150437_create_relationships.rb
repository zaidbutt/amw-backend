class CreateRelationships < ActiveRecord::Migration[8.0]
  def change
    create_table :relationships do |t|
      t.string :relation
      t.integer :with_user
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
