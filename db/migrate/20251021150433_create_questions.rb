class CreateQuestions < ActiveRecord::Migration[8.0]
  def change
    create_table :questions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :chapter, null: false, foreign_key: true
      t.references :story, null: false, foreign_key: true
      t.string :title
      t.datetime :timestamp
      t.string :to_user_id
      t.string :answer_id

      t.timestamps
    end
  end
end
