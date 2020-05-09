class Comment < ApplicationRecord
    belongs_to :threadd
    
    validates :username, :comment_description, presence: true

end
