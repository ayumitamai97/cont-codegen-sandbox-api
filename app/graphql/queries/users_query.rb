module Queries
  class UsersQuery < Types::BaseQuery
    description 'List of users'

    def resolve
      # Dummy data
      [
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
    end
  end
end
