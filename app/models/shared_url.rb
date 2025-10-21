class SharedUrl < ApplicationRecord
  belongs_to :chapter, optional: true
  belongs_to :story, optional: true
  belongs_to :user, optional: true
end
