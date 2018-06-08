# defines a new GraphQL type
Types::UserType = GraphQL::ObjectType.define do
  # this type is named `User`
  name 'User'

  # it has the following fields
  field :id, !types.ID
  field :username, !types.String
  field :first_name, !types.String
  field :last_name, !types.String
  field :birth_date, !types.Date
  field :posts, -> { !types[Types::PostType] }
end