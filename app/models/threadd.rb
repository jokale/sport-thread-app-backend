class Threadd < ApplicationRecord
  has_many :comments
  
  validates :username, :thread_title, :thread_body, presence: true
    validates :username, :thread_title, uniqueness: true
end
