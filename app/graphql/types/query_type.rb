module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :user, Types::UserType, null: true, resolver: Queries::UserQuery
    field :users, Types::UserType.connection_type, null: false, resolver: Queries::UsersQuery
  end
end
