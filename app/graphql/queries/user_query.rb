module Queries
  class UserQuery < Types::BaseQuery
    description 'User'

    argument :id, ID, required: true

    def resolve(id:)
      # Dummy data
      users = [
        {
          id: 1,
          name: 'Alice',
          posts: []
        },
        {
          id: 2,
          name: 'Bob',
          posts: [
            {
              id: 11,
              title: 'About GraphQL',
              content: 'Work in progress ...'
            },
            {
              id: 12,
              title: 'About Ruby',
              content: 'Matz created Ruby'
            }
          ]
        },
      ]

      users.find { _1[:id].to_s == id }
    end
  end
end
