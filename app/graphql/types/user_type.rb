# app/graphql/types/user_type.rb
module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :last_name, String
    field :bio, String
    field :image_url, String
    field :stories, [Types::StoryType], null: true
    field :emergency, Types::EmergencyType, null: true
  end
end
