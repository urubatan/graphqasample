class Types::QueryType < Types::BaseObject
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :allPosts, [Types::PostType], null: false,
    description: "All User Posts In the App" do
      argument :limit, Integer, required: false, default_value: 30
      argument :offset, Integer, required: false, default_value: 0
      argument :filter, String, required: false, default_value: nil
    end
  
  def all_posts(limit:, offset:,filter:)
    result = Post.limit(limit).offset(offset)
    if filter
      term = "%#{filter}%"
      result = result.where("body like ? or title like ?", term, term)
    end
    result
  end
end
