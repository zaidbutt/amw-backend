class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :stories, dependent: :destroy 
    has_many :story_users_links
    has_many :stories, through: :story_users_links
    has_many :story_owners_links
    has_many :owned_stories, through: :story_owners_links, source: :story
    has_many :relationships
    has_one :emergency
    has_many :attachments
    has_many :answers
    has_many :questions
    has_many :shared_urls
    has_many :user_devices
    has_and_belongs_to_many :tagged_moments, class_name: "Moment", join_table: "moment_tagged_users"
  end
  