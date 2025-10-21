class Story < ApplicationRecord
    has_many :story_users_links
    has_many :users, through: :story_users_links
    has_many :story_owners_links
    has_many :owners, through: :story_owners_links, source: :user
    has_many :chapters
    has_many :shared_urls
    belongs_to :user, optional: true
  end
  