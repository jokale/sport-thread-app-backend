class Comment < ApplicationRecord
    belongs_to :threadd
    
    validates :username, :description, presence: true

end
