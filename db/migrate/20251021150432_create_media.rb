class CreateMedia < ActiveRecord::Migration[8.0]
  def change
    create_table :media do |t|
      t.string :parent_id
      t.datetime :timestamp
      t.string :image_url
      t.string :video_url
      t.float :media_size_megabytes
      t.boolean :is_video
      t.references :moment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
