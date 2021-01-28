module Types
  class UserType < BaseObject
    description 'User'

    field :id, ID, null: false
    field :name, String, null: true
    field :posts, [PostType], null: false
  end
end
