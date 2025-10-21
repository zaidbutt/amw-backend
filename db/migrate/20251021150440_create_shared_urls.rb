class CreateSharedUrls < ActiveRecord::Migration[8.0]
  def change
    create_table :shared_urls do |t|
      t.string :url
      t.boolean :is_ready
      t.references :chapter, null: false, foreign_key: true
      t.references :story, null: false, foreign_key: true
      t.datetime :timestamp
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
