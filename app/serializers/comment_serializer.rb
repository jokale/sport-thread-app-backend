class CommentSerializer < ActiveModel::Serializer
  attributes :id,:username, :date, :comment_description, :threadd_id, :upvote, :downvote
  belongs_to :threadd 

  def date

    self.object.date.strftime("%m/%d/%Y %I:%M%p")
    
  end



end

