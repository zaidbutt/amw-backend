class CreateChaptersStoriesJoinTable < ActiveRecord::Migration[8.0]
  def change
    create_join_table :chapters, :stories do |t|
      # t.index [:chapter_id, :story_id]
      # t.index [:story_id, :chapter_id]
    end
  end
end
