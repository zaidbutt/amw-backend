class Chapter < ApplicationRecord
  has_many :shared_urls
  belongs_to :story
  has_many :moments
  has_many :questions
  has_and_belongs_to_many :stories
end
