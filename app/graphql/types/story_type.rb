module Types
  class StoryType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :invite_code, String
    field :invite_code_for_owner, String
    field :image_url, String
    field :locked, Boolean
    field :user, Types::UserType
    field :chapters, [Types::ChapterType]
    field :moments, [Types::MomentType]
  end
end
