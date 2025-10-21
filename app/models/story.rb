class Story < ApplicationRecord
  has_many :story_users_links
  has_many :users, through: :story_users_links
end
