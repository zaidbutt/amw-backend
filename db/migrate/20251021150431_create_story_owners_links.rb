class CreateStoryOwnersLinks < ActiveRecord::Migration[8.0]
  def change
    create_table :story_owners_links do |t|
      t.references :user, null: false, foreign_key: true
      t.references :story, null: false, foreign_key: true
      t.string :role

      t.timestamps
    end
  end
end
