# app/models/user.rb
class User < ApplicationRecord
    has_many :story_users_links
    has_many :stories, through: :story_users_links
    has_many :relationships
    has_one :emergency
end
  