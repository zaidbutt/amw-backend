class Notification < ApplicationRecord
  belongs_to :from_user, class_name: "User", optional: true
  belongs_to :to_user, class_name: "User", optional: true
end
