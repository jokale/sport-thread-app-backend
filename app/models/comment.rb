class Comment < ApplicationRecord
    belongs_to :threadd
    belongs_to :user

    
    validates :username, :comment_description, presence: true

end
