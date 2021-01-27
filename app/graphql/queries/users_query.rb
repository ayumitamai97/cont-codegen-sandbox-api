module Queries
  class UsersQuery < Types::BaseQuery
    description 'List of users'

    def resolve
      # Dummy data
      [
        {
          id: 1,
          name: 'Alice'
        },
        {
          id: 2,
          name: 'Bob'
        },
      ]
    end
  end
end
