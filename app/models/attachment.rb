class Attachment < ApplicationRecord
  belongs_to :user
  belongs_to :answer
  belongs_to :media, optional: true
end
