class PostSerializer < ActiveModel::Serializer
  attributes :title,
             :body,
             :username,
             :upvote

  def username
    object.user.username
  end

end
