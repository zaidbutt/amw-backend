class Story < ApplicationRecord
    
    has_one_attached :image

    has_many :story_users_links
    has_many :users, through: :story_users_links
    has_many :story_owners_links
    has_many :owners, through: :story_owners_links, source: :user
    has_many :chapters
    has_and_belongs_to_many :chapters

    has_many :shared_urls
    belongs_to :user, optional: true

    accepts_nested_attributes_for :chapters

    before_create :generate_invite_codes

    validates :title, presence: true

    private

    def generate_invite_codes
      self.inviteCode ||= SecureRandom.hex(4).upcase
    end
end