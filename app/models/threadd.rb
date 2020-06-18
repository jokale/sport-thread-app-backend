class Threadd < ApplicationRecord
  has_many :comments
  belongs_to :user
  
  validates :username, :thread_title, :thread_body, presence: true
  validates :thread_title, uniqueness: true





end
