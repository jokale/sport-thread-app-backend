class ThreaddSerializer < ActiveModel::Serializer
  attributes :id, :username, :date, :thread_title, :thread_body
  has_many :comments
end

