class CreateNotifications < ActiveRecord::Migration[8.0]
  def change
    create_table :notifications do |t|
      t.datetime :timestamp
      t.string :message
      t.string :title
      t.string :story_id
      t.string :story_name
      t.string :invite_code
      t.string :story_image_url
      t.boolean :is_read
      t.boolean :is_story_joined
      t.string :redirect_url
      t.string :moment_id
      t.references :from_user, null: false, foreign_key: true
      t.references :to_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
