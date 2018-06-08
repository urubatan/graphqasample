# defines a new GraphQL type
Types::PostType = GraphQL::ObjectType.define do
  # this type is named `Post`
  name 'Post'

  # it has the following fields
  field :id, !types.ID
  field :title, !types.String
  field :body, !types.String
  field :comments, -> { !types[Types::CommentType] }
end