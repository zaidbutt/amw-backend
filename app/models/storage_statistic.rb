class StorageStatistic < ApplicationRecord
  belongs_to :user, optional: true
end
