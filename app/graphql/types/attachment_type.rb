# frozen_string_literal: true

module Types
  class AttachmentType < Types::BaseObject
    field :id, ID, null: false
    field :parent_id, String
    field :user_id, Integer, null: false
    field :answer_id, Integer, null: false
    field :media_id, Integer, null: false
    field :element_id, String
    field :type, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
