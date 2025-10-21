class Question < ApplicationRecord
  belongs_to :user
  belongs_to :chapter
  belongs_to :story
  has_one :answer
  has_many :attachments
end
