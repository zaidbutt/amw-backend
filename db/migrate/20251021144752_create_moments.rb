class CreateMoments < ActiveRecord::Migration[8.0]
  def change
    create_table :moments do |t|
      t.string :title
      t.integer :order
      t.references :chapter, null: false, foreign_key: true
      t.integer :story_id

      t.timestamps
    end
  end
end
