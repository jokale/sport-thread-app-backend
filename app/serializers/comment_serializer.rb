class CommentSerializer < ActiveModel::Serializer
  attributes :id,:username, :date, :comment_description, :threadd_id
end

