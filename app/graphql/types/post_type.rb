module Types
  class PostType < BaseObject
    description 'Post'

    field :id, ID, null: false
    field :title, String, null: false
    field :content, String, null: true
  end
end
