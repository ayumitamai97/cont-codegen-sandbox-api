module Queries
  class UserQuery < Types::BaseQuery
    description 'User'

    argument :id, ID, required: true

    def resolve(id:)
      # Dummy data
      users = [
        {
          id: 1,
          name: 'Alice'
        },
        {
          id: 2,
          name: 'Bob'
        },
      ]

      users.find { _1[:id].to_s == id }
    end
  end
end
