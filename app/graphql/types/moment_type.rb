# frozen_string_literal: true

module Types
  class MomentType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :order, Integer
    field :chapter_id, Integer, null: false
    field :story_id, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
