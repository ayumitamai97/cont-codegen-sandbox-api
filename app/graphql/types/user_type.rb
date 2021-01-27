module Types
  class UserType < BaseObject
    description 'User'

    field :id, ID, null: false
    field :name, String, null: true
  end
end
