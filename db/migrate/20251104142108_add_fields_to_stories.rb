class AddFieldsToStories < ActiveRecord::Migration[8.0]
  def change
    add_column :stories, :inviteCode, :string
    add_column :stories, :inviteCodeForOwner, :string
    add_column :stories, :imageUrl, :string
    add_column :stories, :locked, :boolean
    add_column :stories, :user_id, :integer
  end
end
