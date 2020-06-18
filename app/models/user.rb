class User < ApplicationRecord
    has_many :threadds
    has_many :comments
    belongs_to :threadd 
    belongs_to :comment 
    
    validates :username, presence: true
    validates :email, uniqueness: true

    has_secure_password
  
  
  
  
  
  end