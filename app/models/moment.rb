class Moment < ApplicationRecord
  belongs_to :chapter
  belongs_to :story, optional: true
  belongs_to :user, optional: true
  has_one :media
  has_and_belongs_to_many :tagged_users, class_name: "User", join_table: "moment_tagged_users"
end