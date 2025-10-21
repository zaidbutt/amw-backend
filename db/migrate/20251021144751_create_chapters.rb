class CreateChapters < ActiveRecord::Migration[8.0]
  def change
    create_table :chapters do |t|
      t.string :title
      t.integer :order
      t.integer :story_id

      t.timestamps
    end
  end
end
