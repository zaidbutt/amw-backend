class Media < ApplicationRecord
  belongs_to :moment, optional: true
end
