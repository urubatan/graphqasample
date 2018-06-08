# defines a new GraphQL type
Types::CommentType = GraphQL::ObjectType.define do
  # this type is named `Comment`
  name 'Comment'

  # it has the following fields
  field :id, !types.ID
  field :body, !types.String
  field :owner, !types.String
end